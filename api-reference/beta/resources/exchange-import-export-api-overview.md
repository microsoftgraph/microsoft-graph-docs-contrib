---
title: "Use the Exchange Import-Export APIs"
description: "Microsoft Graph lets your app import and export contents from Exchange mailboxes."
ms.localizationpriority: high
author: "cparker-msft"
ms.subservice: "outlook"
doc_type: conceptualPageType
ms.date: 12/06/2024
---

# Use the Exchange Import-Export APIs

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Microsoft Graph's Exchange Import-Export APIs lets your app import and export contents from Outlook mailboxes. Contents within a mailbox can be accessed as a set of [folders](./mailboxfolder.md) and [items](./mailboxitem.md) in a uniform format without having to understanding metadata/structure of each item type like messages, contacts, events, tasks etc separately. These items can be [exported](../api/mailbox-exportitems.md) in FastTransfer stream or FTS format in full-fidelity. Full-fidelity exports ensure that upon [importing](../api/mailbox-createimportsession.md) the item back, Exchange would be able to recreate the item without any loss of information.

These APIs support accessing data in users' primary and [in-place archive](https://docs.microsoft.com/en-us/office365/servicedescriptions/exchange-online-archiving-service-description/archive-features#archive-mailbox) mailboxes on Exchange online.

## How to use the Exchange Import-Export APIs

The following steps allows your app to systematically export & import contents from Exchange mailboxes:

1. [Get a list of mailboxes belonging to a particular user](../api/usersettings-list-exchange.md).
2. Discover contents of the mailbox as a set of [folders](./mailboxfolder.md) and [items](./mailboxitem.md).
3. [Bulk export items from a mailbox](../api/mailbox-exportitems.md).
4. Create or update mailbox [folders](./mailboxfolder.md).
5. [Import an item into the same or a different mailbox](../api/mailbox-createimportsession.md).

## Prerequisites to access Exchange Import-Export APIs

We are currently granting access to these APIs on a case-by-case basis. You can request access to the Exchange Import-Export APIs via the following [form](https://forms.office.com/r/UxwrLA2GJP). We will review the submission and contact the form submitter. Please allow 2-3 weeks for processing.
