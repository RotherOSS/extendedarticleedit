.. toctree::
    :maxdepth: 2
    :caption: Contents

Sacrifice to Sphinx
===================

Description
===========
The package AgentTicketArticleChange adds the possibility to change ticket and article attributes, except subject and body of articles.

System requirements
===================

Framework
---------
OTOBO 11.0.x

Packages
--------
\-

Third-party software
--------------------
\-

Usage
=====
After installation, in the Zoom view of a ticket, a new article action is visible in the menu bar of the articles. The action opens a pop-up, where the configured attributes of ticket and articles can be changed and saved.

Note that changing the time units will overwrite existing time units accounted for this article and will not add them to the accounted times for the respective agent.

Setup
-----
The setup is similar to other ticket screens in OTOBO. Special settings are Ticket::Frontend::AgentTicketArticleChange###IsVisibleForCustomer and Ticket::Frontend::AgentTicketArticleChange###TimeUnitsOverwrite, as they allow to enable or disable the respective attribute for the article change screen.

Configuration Reference
-----------------------

Core::Autoload
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

AutoloadPerlPackages###2000-ArticleAccountedTimeOverwrite
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Delete all time accounting entries for an article and write a new one.

Core::Ticket::ACL
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ACLKeysLevel3::Actions###200-AgentTicketArticleChange
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines which items are available for 'Action' in third level of the ACL structure.

Frontend::Admin
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Events###Article
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
List of all article events to be displayed in the GUI.

Frontend::Agent::ModuleRegistration
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Frontend::Module###AgentTicketArticleChange
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Agent::ModuleRegistration::Loader
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Loader::Module::AgentTicketArticleChange###002-Ticket
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Loader module registration for the agent interface.

Frontend::Agent::View::TicketArticleChange
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Ticket::Frontend::AgentTicketArticleChange###Queue
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets the queue in the article change screen of a zoomed ticket in the agent interface.

Ticket::Frontend::AgentTicketArticleChange###Service
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets the service in the article change screen of the agent interface (Ticket::Service needs to be enabled).

Ticket::Frontend::AgentTicketArticleChange###Responsible
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets the responsible agent of the ticket in the article change screen of the agent interface.

Ticket::Frontend::AgentTicketArticleChange###Owner
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets the ticket owner in the article change screen of the agent interface.

Ticket::Frontend::AgentTicketArticleChange###State
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets the state of a ticket in the article change screen of the agent interface.

Ticket::Frontend::AgentTicketArticleChange###StateType
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the next state of a ticket after adding a note, in the article change screen of the agent interface.

Ticket::Frontend::AgentTicketArticleChange###TimeUnitsOverwrite
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets the time units in the article change screen of the agent interface. Note that time units are not added, but get overwritten via this screen.

Ticket::Frontend::AgentTicketArticleChange###IsVisibleForCustomer
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets the default article customer visibility in the article change screen of the agent interface.

Ticket::Frontend::AgentTicketArticleChange###PriorityDefault
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the default ticket priority in the article change screen of the agent interface.

Ticket::Frontend::AgentTicketArticleChange###QueueMandatory
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets if queue must be selected by the agent.

Ticket::Frontend::AgentTicketArticleChange###OwnerMandatory
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets if ticket owner must be selected by the agent.

Ticket::Frontend::AgentTicketArticleChange###ResponsibleMandatory
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets if ticket responsible must be selected by the agent.

Ticket::Frontend::AgentTicketArticleChange###StateMandatory
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets if state must be selected by the agent.

Ticket::Frontend::AgentTicketArticleChange###StateDefault
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the default next state of a ticket after adding a note, in the article change screen of the agent interface.

Ticket::Frontend::AgentTicketArticleChange###IsVisibleForCustomerDefault
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines if the note in the article change screen of the agent interface is visible for the customer by default.

Ticket::Frontend::AgentTicketArticleChange###Priority
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Shows the ticket priority options in the article change screen of the agent interface.

Ticket::Frontend::AgentTicketArticleChange###Title
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Shows the title field in the article change screen of the agent interface.

Ticket::Frontend::AgentTicketArticleChange###Permission
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Required permissions to use the article change screen in the agent interface.

Ticket::Frontend::AgentTicketArticleChange###RequiredLock
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines if a ticket lock is required in the article change screen of the agent interface (if the ticket isn't locked yet, the ticket gets locked and the current agent will be set automatically as its owner).

Ticket::Frontend::AgentTicketArticleChange###TicketType
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets the ticket type in the article change screen of the agent interface (Ticket::Type needs to be enabled).

Ticket::Frontend::AgentTicketArticleChange###ServiceMandatory
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets if service must be selected by the agent.

Ticket::Frontend::AgentTicketArticleChange###SLAMandatory
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets if SLA must be selected by the agent.

Ticket::Frontend::AgentTicketArticleChange###HistoryType
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the history type for the article change screen action, which gets used for ticket history in the agent interface.

Ticket::Frontend::AgentTicketArticleChange###DynamicField
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Dynamic fields shown in the article change screen of the agent interface.

Ticket::Frontend::AgentTicketArticleChange###HistoryComment
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the history comment for the article change screen action, which gets used for ticket history in the agent interface.

Ticket::Frontend::AgentTicketArticleChange###RichTextHeight
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the initial height in pixels for the rich text editor component for this screen.

Ticket::Frontend::AgentTicketArticleChange###QuickDateButtons
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
This option sets additional quick date buttons to pending dates. For ordering purposes one hash entry per array segment has to be set. The key is the button name, value is the value, where a single number n sets the date to n days from now, +n adds n days to the currently set date, and -n subtracts them.

Ticket::Frontend::AgentTicketArticleChange###RichTextWidth
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the width for the rich text editor component for this screen. Enter number (pixels) or percent value (relative).

Frontend::Agent::View::TicketZoom::ArticleAction
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Ticket::Frontend::Article::Actions###Phone
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines available article actions for Phone articles.

Ticket::Frontend::Article::Actions###Chat
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines available article actions for Chat articles.

Ticket::Frontend::Article::Actions###Internal
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines available article actions for Internal articles.

Ticket::Frontend::Article::Actions###Email
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines available article actions for Email articles.

Ticket::Frontend::Article::Actions###Invalid
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines available article actions for invalid articles.

Frontend::Base::DynamicFieldScreens
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

DynamicFieldScreens###AgentTicketArticleChange
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
This configuration defines all possible screens to enable or disable dynamic fields.

Frontend::Base::OutputFilter
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Frontend::Output::FilterElementPost###Znuny4OTOBOShowPendingTimeIfNeeded
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
This configuration registers an OutputFilter module that injects the javascript functionality to remove PendingTime.

About
=======

Contact
-------
| Rother OSS GmbH
| Email: hello@otobo.io
| Web: https://otobo.io

Version
-------
Author: |doc-vendor| / Version: |doc-version| / Date of release: |doc-datestamp|
