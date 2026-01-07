---
title: "Overview of the mailbox import and export APIs in Microsoft Graph (preview)"
description: "Use the mailbox import and export APIs in Microsoft Graph to build solutions that integrate with mailbox resources for data import and export scenarios."
author: "cparker"
ms.localizationpriority: high
ms.subservice: "outlook"
ms.custom: scenarios:getting-started
doc_type: conceptual
ms.date: 12/06/2024
ms.topic: concept-article
---

# Overview of the mailbox import and export APIs in Microsoft Graph (preview)

The mailbox import and export APIs in Microsoft Graph let your application import and export contents from Exchange Online mailboxes. Contents within a mailbox can be accessed as a set of [folders](/graph/api/resources/mailboxfolder) and [items](/graph/api/resources/mailboxitem) in a uniform format without having to understand the metadata and structure of each item type separately. These items can be [exported](/graph/api/mailbox-exportitems) as an opaque stream in full fidelity (you can't change the export stream). Full-fidelity exports ensure that when you [import](/graph/api/mailbox-createimportsession) an item back into a mailbox, Exchange recreates the item without any loss of information.

These APIs support access to data in users' primary mailboxes and shared mailboxes on Exchange Online. Items can be imported to the same mailbox or a different one.

> [!Important]
> The mailbox import and export APIs in Microsoft Graph are not designed for mailbox backup and restore. For mailbox backup and restore in Microsoft 365, see [Microsoft 365 Backup](/graph/backup-storage-concept-overview).

## Why integrate with the mailbox import and export APIs?

### Export a copy of a mailbox item in full-fidelity

Exchange is a gold mine of important information: email, contacts, tasks, and calendars are core to the functions of an organization. Exporting an item in full fidelity is the best option for exporting items that you want to import back into an Exchange mailbox.

### Copy items from one mailbox to another

You can use the mailbox import and export APIs to copy items between mailboxes, which is common for many workflows. Exchange developers can use these APIs to automate the process.

The following are some of the scenarios that the mailbox import and export APIs enable:

- [Get a list of mailboxes that belong to a user](/graph/api/usersettings-list-exchange)
- [Import or export mailbox items](/graph/api/resources/mailboxitem#methods)

## API reference

Looking for the API reference for this service, see [Mailbox import and export APIs in Microsoft Graph beta](/graph/api/resources/mailbox-import-export-api-overview?view=graph-rest-beta&preserve-view=true).

## Next steps

- To learn more about the mailbox import and export APIs, see [Use the mailbox import and export APIs in Microsoft Graph (preview)](/graph/api/resources/mailbox-import-export-api-overview).
- To learn how to import a mailbox item, see [Import an Exchange mailbox item using the mailbox import and export APIs](/graph/import-exchange-mailbox-item).
- Try the mailbox import and export APIs in [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
