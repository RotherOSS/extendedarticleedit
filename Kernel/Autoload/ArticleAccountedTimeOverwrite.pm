# --
# OTOBO is a web-based ticketing system for service organisations.
# --
# Copyright (C) 2001-2020 OTRS AG, https://otrs.com/
# Copyright (C) 2019-2025 Rother OSS GmbH, https://otobo.io/
# --
# This program is free software: you can redistribute it and/or modify it under
# the terms of the GNU General Public License as published by the Free Software
# Foundation, either version 3 of the License, or (at your option) any later version.
# This program is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
# FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <https://www.gnu.org/licenses/>.
# --

## no critic (Modules::RequireExplicitPackage)

use Kernel::System::Ticket::Article ();    ## no perlimports

package Kernel::System::Ticket::Article;   ## no critic (Modules::RequireFilenameMatchesPackage)

use strict;
use warnings;
use v5.24;
use utf8;

our @ObjectDependencies = (
    'Kernel::System::DB',
    'Kernel::System::Log',
    'Kernel::System::Ticket',
);

sub ArticleAccountedTimeOverwrite {
    my ( $Self, %Param ) = @_;

    # check needed params
    for my $Needed (qw(TicketID ArticleID TimeUnits UserID)) {
        if ( !defined $Param{$Needed} ) {
            $Kernel::OM->Get('Kernel::System::Log')->Log(
                Priority => 'error',
                Message  => "Need $Needed!",
            );
            return;
        }
    }

    # allow TimeUnits => 0
    for my $Needed (qw(TicketID ArticleID UserID)) {
        if ( !$Param{$Needed} ) {
            $Kernel::OM->Get('Kernel::System::Log')->Log(
                Priority => 'error',
                Message  => "Need $Needed!",
            );
            return;
        }
    }

    # get needed objects
    my $ArticleBackendObject = $Self->BackendForArticle(
        TicketID  => $Param{TicketID},
        ArticleID => $Param{ArticleID},
        UserID    => $Param{UserID},
    );
    my $DBObject = $Kernel::OM->Get('Kernel::System::DB');

    my %Article = $ArticleBackendObject->ArticleGet(
        TicketID  => $Param{TicketID},
        ArticleID => $Param{ArticleID},
    );
    if ( !%Article ) {
        $Kernel::OM->Get('Kernel::System::Log')->Log(
            Priority => 'error',
            Message  => "Article does not exist or you do not have permission to view it in its current state!",
        );
        return;
    }

    my $DeleteSuccess = $Self->ArticleAccountedTimeDelete(
        ArticleID => $Param{ArticleID},
    );
    if ( !$DeleteSuccess ) {
        $Kernel::OM->Get('Kernel::System::Log')->Log(
            Priority => 'error',
            Message  => "Deleting existing time accounting entries failed!",
        );
        return;
    }

    # db update
    return if !$DBObject->Do(
        SQL => "INSERT INTO time_accounting "
            . " (ticket_id, article_id, time_unit, create_time, create_by, change_time, change_by) "
            . " VALUES (?, ?, $Param{TimeUnits}, current_timestamp, ?, current_timestamp, ?)",
        Bind => [
            \$Param{TicketID}, \$Param{ArticleID}, \$Param{UserID}, \$Param{UserID},
        ],
    );

    # add history
    my $AccountedTime = $Kernel::OM->Get('Kernel::System::Ticket')->TicketAccountedTimeGet( TicketID => $Param{TicketID} );
    $Kernel::OM->Get('Kernel::System::Ticket')->HistoryAdd(
        TicketID     => $Param{TicketID},
        ArticleID    => $Param{ArticleID},
        CreateUserID => $Param{UserID},
        HistoryType  => 'TimeAccounting',
        Name         => "\%\%$Param{TimeUnits}\%\%$AccountedTime",
    );

    return 1;
}

1;
