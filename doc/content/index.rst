.. toctree::
    :maxdepth: 2
    :caption: Contents

Sacrifice to Sphinx
===================

Description
===========
The package ExtendedArticleEdit allows editing of article dynamic fields, customer visibility and time accounting for all article types, including E-Mails, as well as editing subject, body and attachments for internal and phone articles.

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



After installation and setup, the editing of articles of configured type(s) are possible, as well as editing the customer visibility and setting time units, if enabled.

Note that time units are added instead of being overwritten.

Setup
-----
Per default, editing in general is enabled for all articles which are not visible to the customer. If articles which are visible to the customer can be edited, is controlled by the system configuration setting ``Ticket::Frontend::AgentTicketArticleEdit###ArticleCustomerVisible``.

Editing the article subject, body and attachments is in general only possible for internal and phone articles and per default only enabled for internal articles. This is controlled by the system configuration setting ``Ticket::Frontend::AgentTicketArticleEdit###Article``.

Time units and the customer visibility state of articles are not displayed per default in the article edit screen, but can be enabled via the system configuration settings ``Ticket::Frontend::AgentTicketArticleEdit###TimeUnits`` and ``Ticket::Frontend::AgentTicketArticleEdit###IsVisibleForCustomer``.

It is also possible to set time units as mandatory via the system configuration setting ``Ticket::Frontend::AgentTicketArticleEdit###TimeUnitsMandatory``.

Configuration Reference
-----------------------

Frontend::Agent::View::TicketArticleEdit
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Ticket::Frontend::AgentTicketArticleEdit###IsVisibleForCustomer
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets customer visibility of the article in the article edit screen of the agent interface.

Ticket::Frontend::AgentTicketArticleEdit###TimeUnitsMandatory
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets if time units must be set by the agent.

Ticket::Frontend::AgentTicketArticleEdit###TimeUnits
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets the time units in the ticket note screen of the agent interface.

Ticket::Frontend::AgentTicketArticleEdit###Article
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines for which article channels the editing of subject, body and attachment is enabled. "Both" includes "Phone" and "Internal".

Ticket::Frontend::AgentTicketArticleEdit###ArticleCustomerVisible
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Enables or disables the editing of articles which are visible for the customer in general.

Frontend::Agent::View::TicketZoom::ArticleAction
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Ticket::Frontend::Article::Actions###Email
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines available article actions for Email articles.

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
