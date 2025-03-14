.. toctree::
    :maxdepth: 2
    :caption: Contents

Sacrifice to Sphinx
===================

Description
===========
The package AgentTicketArticleChange enhances the capabilities of the existing article editing feature.

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

Setup
-----
The setup is similar to other ticket screens in OTOBO. Special settings are Ticket::Frontend::AgentTicketArticleChange###IsVisibleForCustomer and Ticket::Frontend::AgentTicketArticleChange###TimeUnitsOverwrite, as they allow to enable or disable the respective attribute for the article change screen.

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
