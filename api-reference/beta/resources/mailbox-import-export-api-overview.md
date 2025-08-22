---
title: "Use the mailbox import and export APIs in Microsoft Graph (preview)"
description: "Learn how to use the mailbox import and export APIs in Microsoft Graph to import and export contents from Exchange Online mailboxes."
ms.localizationpriority: high
author: "cparker-msft"
ms.subservice: "outlook"
doc_type: conceptualPageType
ms.date: 12/06/2024
---

# Use the mailbox import and export APIs in Microsoft Graph (preview)

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The mailbox import and export APIs in Microsoft Graph allow your application to import and export contents from Exchange Online mailboxes. Mailbox contents can be accessed as a collection of [folders](./mailboxfolder.md) and [items](./mailboxitem.md) in a consistent format, without the need to manage the metadata or structure of each item type individually. These items can be [exported](../api/mailbox-exportitems.md) as an opaque stream in full fidelity (you can't change the export stream). Full-fidelity exports ensure that when you [import](../api/mailbox-createimportsession.md) an item, Exchange recreates it with no loss of information.

These APIs support access to data in users' primary mailboxes and shared mailboxes on Exchange Online. Items can be imported to the same mailbox or a different one.

> [!Important]
> The mailbox import and export APIs in Microsoft Graph are not designed for mailbox backup and restore. For mailbox backup and restore in Microsoft 365, see [Microsoft 365 Backup](/graph/backup-storage-concept-overview).

## How to use the mailbox import and export APIs

The following steps allow your app to systematically export and import contents from Exchange mailboxes:

1. [Get a list of mailboxes that belong to a particular user](../api/usersettings-list-exchange.md).
2. Discover the contents of the mailbox as a set of [folders](./mailboxfolder.md) and [items](./mailboxitem.md).
3. [Export items from a mailbox](../api/mailbox-exportitems.md).
4. Create or update mailbox [folders](./mailboxfolder.md).
5. [Import an item into the same or a different mailbox](../api/mailbox-createimportsession.md).

## Common use cases

| Use case                                             | REST resource                                                                  | See also                                 |
| :----------------------------------------------------| :---------------------------------------------------------------------------- | :----------------------------------------|
| Create, get, update, or delete a mailbox folder      | [mailboxFolder](../resources/mailboxfolder.md)               | [mailboxFolder methods](../resources/mailboxfolder.md#methods)     |
| Get one or more mailbox items                        | [mailboxItem](../resources/mailboxitem.md) | [mailboxItem methods](../resources/mailboxitem.md#methods) |
| Get delta for folders                                | [mailboxFolder](../resources/mailboxfolder.md)  [mailboxFolder: delta](../api/mailboxfolder-delta.md) |
| Get delta for items                                  | [mailboxItem](../resources/mailboxitem.md) | [mailboxItem: delta](../api/mailboxitem-delta.md) |
| Import or export mailboxes                           | [mailbox](../resources/mailbox.md) | [mailbox methods](../resources/mailboxitem.md#methods) |
| Get a list of mailboxes that belong to a user        | [exchangeSettings](../resources/exchangesettings.md) | [List Exchange settings](../api/usersettings-list-exchange.md) |

## Next steps

Use the mailbox import and export APIs in Microsoft Graph to import and export contents from Exchange mailboxes. To learn more:

- Explore the resources and methods that are most helpful to your scenario.
- Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).

## Related content

[Import an Exchange mailbox item using the mailbox import and export APIs](/graph/import-exchange-mailbox-item)