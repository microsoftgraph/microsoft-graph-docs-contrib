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

Microsoft Graph's Exchange Import-Export APIs lets your app import and export contents from Outlook mailboxes. Contents within a mailbox can be accessed as a set of [folders](./mailboxfolder.md) and [items](./mailboxitem.md) in a uniform format without having to understand the metadata/structure of each item type separately. These items can be [exported](../api/mailbox-exportitems.md) in [FastTransfer stream](/openspecs/exchange_server_protocols/ms-oxcfxics/a2648823-0a98-43ee-98e8-590e4f7bcbbe) format in full-fidelity. Full-fidelity exports ensure that upon [importing](../api/mailbox-createimportsession.md) the item back, Exchange would be able to recreate the item without any loss of information.

These APIs support accessing data in users' primary and [in-place archive](/exchange/clients-and-mobile-in-exchange-online/archive-client-and-compliance-&-security-feature-details?tabs=Archive-features#archive-mailbox) mailboxes on Exchange online.

## How to use the Exchange Import-Export APIs

The following steps allow your app to systematically export & import contents from Exchange mailboxes:

1. [Get a list of mailboxes belonging to a particular user](../api/usersettings-list-exchange.md).
2. Discover contents of the mailbox as a set of [folders](./mailboxfolder.md) and [items](./mailboxitem.md).
3. [Export items from a mailbox](../api/mailbox-exportitems.md).
4. Create or update mailbox [folders](./mailboxfolder.md).
5. [Import an item into the same or a different mailbox](../api/mailbox-createimportsession.md).

## Prerequisites to access Exchange Import-Export APIs

We're currently granting access to these APIs on a case-by-case basis. You can request access to the Exchange Import-Export APIs via the following [form](https://forms.office.com/r/UxwrLA2GJP). We'll review the submission and contact the form submitter. Allow 2-3 weeks for processing.
