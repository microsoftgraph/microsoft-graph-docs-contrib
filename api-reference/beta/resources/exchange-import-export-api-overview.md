---
title: "Use the Exchange import and export APIs in Microsoft Graph (preview)"
description: "Learn how to use the Exchange import and export APIs in Microsoft Graph to import and export contents from Exchange mailboxes."
ms.localizationpriority: high
author: "cparker-msft"
ms.subservice: "outlook"
doc_type: conceptualPageType
ms.date: 12/06/2024
---

# Use the Exchange import and export APIs in Microsoft Graph (preview)

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The Exchange import and export APIs in Microsoft Graph let your app import and export contents from Exchange mailboxes. Contents within a mailbox can be accessed as a set of [folders](./mailboxfolder.md) and [items](./mailboxitem.md) in a uniform format without having to understand the metadata and structure of each item type separately. These items can be [exported](../api/mailbox-exportitems.md) in [FastTransfer stream](/openspecs/exchange_server_protocols/ms-oxcfxics/a2648823-0a98-43ee-98e8-590e4f7bcbbe) format in full fidelity. Full-fidelity exports ensure that when you [import](../api/mailbox-createimportsession.md) an item back, Exchange recreates the item without any loss of information.

These APIs support access to data in users' primary and [in-place archive](/exchange/clients-and-mobile-in-exchange-online/archive-client-and-compliance-&-security-feature-details?tabs=Archive-features#archive-mailbox) mailboxes on Exchange online.

## How to use the Exchange import and export APIs

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
| Import or export mailboxes                           | [mailbox](../resources/mailbox.md) | [mailbox methods](../resources/mailboxitem.md#methods) |
| Get a list of mailboxes that belong to a user        | [exchangeSettings](../resources/exchangesettings.md) | [List Exchange settings](../api/usersettings-list-exchange.md) |

## Next steps

Use the Exchange import and export APIs in Microsoft Graph to import and export contents from Exchange mailboxes. To learn more:

- Explore the resources and methods that are most helpful to your scenario.
- Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).

## Related content

[Import an Exchange mailbox item](/graph/import-exchange-mailbox-item)
