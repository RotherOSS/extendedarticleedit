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

package Kernel::Language::de_AgentTicketArticleChange;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # Template: AgentTicketArticleEdit
    $Self->{Translation}{'Edit Article'} = 'Artikel bearbeiten';

    # SysConfig
    $Self->{Translation}{'Both'}     = 'Beides';
    $Self->{Translation}{'Internal'} = 'Intern';
    $Self->{Translation}{'Defines for which article channels the editing of subject, body and attachment is enabled. "Both" includes "Phone" and "Internal".'} = 'Definiert, für welche Artikel-Typen der Betreff, der Text und die Anhänge geändert werden können. "Beides" beinhaltet "Telefon" und "Intern".';
    $Self->{Translation}{'Enables or disables the editing of articles which are visible for the customer in general.'} = 'Aktiviert oder deaktiviert das Bearbeiten von Artikeln, die für den Kunden sichtbar sind.';
    $Self->{Translation}{'Sets customer visibility of the article in the article edit screen of the agent interface.'} = 'Setzt die Kundensichtbarkeit im Artikel-bearbeiten-Bildschirm von Tickets im Agentenbereich.';
    $Self->{Translation}{'Sets the time units in the ticket note screen of the agent interface.'} = 'Setzt die Zeitbuchung im Artikel-ändern-Bildschirm von Tickets im Agentenbereich.';
    $Self->{Translation}{'Sets if time units must be set by the agent.'} = 'Gibt an, ob Zeiteinheiten durch den Agenten gesetzt werden müssen.';

    push @{ $Self->{JavaScriptStrings} // [] }, (
    );

    return 1;
}

1;
