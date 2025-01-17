---
title: "Overview of the mailbox import and export APIs in Microsoft Graph (preview)"
description: "Use the mailbox import and export APIs in Microsoft Graph to build solutions that integrate with mailbox resources for data import and export scenarios"
author: "cparker"
ms.localizationpriority: high
ms.subservice: "outlook"
ms.custom: scenarios:getting-started
doc_type: conceptual
ms.date: 12/06/2024
---

# Overview of the mailbox import and export APIs in Microsoft Graph (preview)

The mailbox import and export APIs in Microsoft Graph let your application import and export contents from Exchange Online mailboxes. Contents within a mailbox can be accessed as a set of [folders](./mailboxfolder.md) and [items](./mailboxitem.md) in a uniform format without having to understand the metadata and structure of each item type separately. These items can be [exported](../api/mailbox-exportitems.md) in [FastTransfer stream](/openspecs/exchange_server_protocols/ms-oxcfxics/a2648823-0a98-43ee-98e8-590e4f7bcbbe) format in full fidelity. Full-fidelity exports ensure that when you [import](../api/mailbox-createimportsession.md) an item back, Exchange recreates the item without any loss of information.

These APIs support access to data in users' primary and [in-place archive](/exchange/clients-and-mobile-in-exchange-online/archive-client-and-compliance-&-security-feature-details?tabs=Archive-features#archive-mailbox) mailboxes on Exchange online. Items can be imported to the same mailbox or a different one.

## Why integrate with the mailbox import and export APIs?

### Backup and restore mailbox items in full fidelity

Exchange is a gold mine of important information: email, contacts, tasks, and calendars are core to an organization's functions. Sometimes users and administrators encounter a need to restore an item or set of items in a mailbox, and additionally make changes to the mailbox's folder hierarchy. Many independent software vendors (ISVs) address this scenario by performing item-level backups of mailbox content, and restoring the content back into mailboxes when necessary. When using APIs that don't support the FastTransfer stream format, restoring mailbox content can be a challenge.

The following are some of the scenarios that the mailbox import and export API enables:

- [Get a list of mailboxes that belong to a user](/api-reference/beta/api/usersettings-list-exchange.md)
- [Import or export mailbox items](/api-reference/beta/resources/mailboxitem.md#methods)

### Move items from one mailbox to another

You can use the mailbox import and export APIs to move mailbox items from one mailbox to a different mailbox. Moving items between different mailboxes is a common occurrence for many workflows. Exchange developers can use the mailbox import and export APIs to help automate moving mailbox items from one mailbox to a different mailbox.

## API reference

Looking for the API reference for this service?

- [mailbox import and export APIs in Microsoft Graph beta](/api-reference/beta/resources/exchange-import-export-api-overview.md)

## Next steps

Use the Exchange import and export APIs in Microsoft Graph to import and export contents from Exchange mailboxes. To learn more:

- Explore the resources and methods that are most helpful to your scenario.
- Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
