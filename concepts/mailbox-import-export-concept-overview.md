---
title: "Overview of the mailbox import and export APIs in Microsoft Graph (preview)"
description: "Use the mailbox import and export APIs in Microsoft Graph to build solutions that integrate with mailbox resources for data import and export scenarios."
author: "cparker"
ms.localizationpriority: high
ms.subservice: "outlook"
ms.custom: scenarios:getting-started
doc_type: conceptual
ms.date: 12/06/2024
---

# Overview of the mailbox import and export APIs in Microsoft Graph (preview)

The mailbox import and export APIs in Microsoft Graph let your application import and export contents from Exchange Online mailboxes. Contents within a mailbox can be accessed as a set of [folders](/graph/api/resources/mailboxfolder) and [items](/graph/api/resources/mailboxitem) in a uniform format without having to understand the metadata and structure of each item type separately. These items can be [exported](/graph/api/mailbox-exportitems) in [FastTransfer stream](/openspecs/exchange_server_protocols/ms-oxcfxics/a2648823-0a98-43ee-98e8-590e4f7bcbbe) format in full fidelity. Full-fidelity exports ensure that when you [import](/graph/api/mailbox-createimportsession) an item back, Exchange recreates the item without any loss of information.

These APIs support access to data in users' primary and [in-place archive](/exchange/clients-and-mobile-in-exchange-online/archive-client-and-compliance-&-security-feature-details?tabs=Archive-features#archive-mailbox) mailboxes on Exchange Online. Items can be imported to the same mailbox or a different one.

## Why integrate with the mailbox import and export APIs?

### Backup and restore mailbox items in full fidelity

Exchange is a gold mine of important information: email, contacts, tasks, and calendars are core to the functions of an organization. Sometimes users and administrators encounter a need to restore an item or a set of items in a mailbox, and also make changes to the folder hierarchy of a  mailbox. Many independent software vendors (ISVs) address this scenario by performing item-level backups of mailbox content, and restoring the content back into mailboxes when necessary. When using APIs that don't support the FastTransfer stream format, restoring mailbox content can be a challenge.

The following are some of the scenarios that the mailbox import and export APIs enable:

- [Get a list of mailboxes that belong to a user](/graph/api/usersettings-list-exchange)
- [Import or export mailbox items](/graph/api/resources/mailboxitem#methods)

### Move items from one mailbox to another

You can use the mailbox import and export APIs to move items between mailboxes, which is common for many workflows. Exchange developers can use these APIs to automate the process.

## API reference

Looking for the API reference for this service, see [Mailbox import and export APIs in Microsoft Graph beta](/graph/api/resources/mailbox-import-export-api-overview?view=graph-rest-beta&preserve-view=true).

## Next steps

- To learn more about the mailbox import and export APIs, see [Use the mailbox import and export APIs in Microsoft Graph (preview)](/graph/api/resources/mailbox-import-export-api-overview).
- To learn how to import a mailbox item, see [Import an Exchange mailbox item using the mailbox import and export APIs](/graph/import-exchange-mailbox-item).
- Try the mailbox import and export APIs in [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
