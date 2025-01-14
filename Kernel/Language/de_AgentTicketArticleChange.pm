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

    # Template: AgentTicketArticleChange
    $Self->{Translation}->{'Change Article "%s" of %s%s%s'} ='Artikel "%s" von %s%s%s ändern';
    $Self->{Translation}->{'Article Settings'} = 'Artikel-Einstellungen';

    # Article Action: Kernel/Output/HTML/ArticleAction/AgentTicketArticleChange.pm
    $Self->{Translation}->{'Change this article'} = 'Artikel ändern';
    $Self->{Translation}->{'Change'} = 'Ändern';

    # SysConfig
    $Self->{Translation}->{'Delete all time accounting entries for an article and write a new one.'} = 'Lösche alle Zeitbuchungs-Einträge des Artikels und lege einen neuen Eintrag an.';
    $Self->{Translation}->{'Required permissions to use the article change screen in the agent interface.'} = 'Zum Aufrufen des "Artikel ändern"-Dialogs im Agentenbereich erforderliche Rechte.';
    $Self->{Translation}->{'Defines if a ticket lock is required in the article change screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).'} = 'Bestimmt, ob dieser Screen im Agenten-Interface das Sperren des Tickets voraussetzt. Das Ticket wird (falls nötig) gesperrt und der aktuelle Agent wird als Besitzer gesetzt.';
    $Self->{Translation}->{'Sets the ticket type in the article change screen of the agent interface (Ticket::Type needs to be enabled).'} = 'Setzt den Ticket-Typ im Artikel-ändern-Bildschirm für Tickets im Agentenbereich (Ticket::Type muss aktiviert sein).';
    $Self->{Translation}->{'Sets the service in the article change screen of the agent interface (Ticket::Service needs to be enabled).'} = 'Setzt den Service im Artikel-ändern-Bildschirm für Tickets im Agentenbereich (Ticket::Service muss aktiviert sein).';
    $Self->{Translation}->{'Sets the queue in the article change screen of a zoomed ticket in the agent interface.'} = 'Setzt die Queue im Artikel-ändern-Bildschirm von Tickets im Agentenbereich.';
    $Self->{Translation}->{'Sets the ticket owner in the article change screen of the agent interface.'} = 'Setzt den Besitzer im Artikel-ändern-Bildschirm für Tickets im Agentenbereich.';
    $Self->{Translation}->{'Sets the responsible agent of the ticket in the article change screen of the agent interface.'} = 'Setzt den verantwortlichen Agenten im Artikel-ändern-Bildschirm für Tickets im Agentenbereich.';
    $Self->{Translation}->{'Sets the state of a ticket in the article change screen of the agent interface.'} = 'Setzt den Status im Artikel-ändern-Bildschirm von Tickets im Agentenbereich.';
    $Self->{Translation}->{'Defines the next state of a ticket after adding a note, in the article change screen of the agent interface.'} = 'Definiert den nächsten Ticket Status nach dem hinzufügen einer Notiz in der "Artikel ändern" Ansicht der Agenten-Oberfläche.';
    $Self->{Translation}->{'Defines the default next state of a ticket after adding a note, in the article change screen of the agent interface.'} = 'Bestimmt den Folgestatus für Tickets, für die im Artikel-ändern-Bildschirm im Agenten-Interface eine Notiz hinzugefügt wurde.';
    $Self->{Translation}->{'Sets the default article customer visibility in the article change screen of the agent interface.'} = 'Bestimmt die voreingestellte Sichtbarkeit von "Artikel ändern"-Artikeln für Kunden im Agentenbereich.';
    $Self->{Translation}->{'Defines if the note in the article change screen of the agent interface is visible for the customer by default.'} = 'Gibt an, ob die Notiz im Bildschirm zum Ändern des Artikels des Agentenbereichs standardmäßig für den Kunden sichtbar sein soll.';
    $Self->{Translation}->{'Sets the time units in the article change screen of the agent interface. Note that time units are not added, but get overwritten via this screen.'} = 'Setzt die Zeitbuchung im Artikel-ändern-Bildschirm von Tickets im Agentenbereich.';
    $Self->{Translation}->{'Shows the ticket priority options in the article change screen of the agent interface.'} = 'Zeigt die Auswahl zur Einstellung der Ticket-Priorität im Artikel ändern-Bildschirm des Agentenbereichs.';
    $Self->{Translation}->{'Defines the default ticket priority in the article change screen of the agent interface.'} = 'Definiert die Standard-Ticketpriorität in der \'Artikel ändern\'-Oberfläche im TicketZoom im Agenten-Interface.';
    $Self->{Translation}->{'Shows the title field in the article change screen of the agent interface.'} = 'Zeigt das Feld zur Eingabe eines Ticket-Titels im Artikel-ändern-Bildschirm der Agentenoberfläche.';
    $Self->{Translation}->{'Defines the history type for the article change screen action, which gets used for ticket history in the agent interface.'} = 'Definiert den Historien-Typ für die Aktion "Artikel ändern" welcher für die Ticket-Historie in der Agenten-Oberfläche benutzt wird.';
    $Self->{Translation}->{'Defines the history comment for the article change screen action, which gets used for ticket history in the agent interface.'} = 'Definiert den Historien-Kommentar für die Aktion "Artikel ändern" welcher in der Ticket-Historie in der Agenten-Oberfläche angezeigt wird.';
    $Self->{Translation}->{'Dynamic fields shown in the article change screen of the agent interface.'} = 'Dynamische Felder zur Eingabe im Artikel ändern-Bildschirm des Agentenbereichs.';
    $Self->{Translation}->{'This configuration adds the article change screen to the screens for which it is possible to enable or disable dynamic fields.'} = 'Diese Konfiguration fügt den Artikel-Ändern-Bildschirm zu den Oberflächen hinzu, auf denen dynamische Felder aktiviert oder deaktiviert werden.';

    push @{ $Self->{JavaScriptStrings} // [] }, (
    );

    return 1;
}

1;
