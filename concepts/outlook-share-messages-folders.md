---
title: "Get Outlook messages in a shared or delegated folder using the Outlook mail API"
description: "Use the Outlook mail API to share mail folders with others and manage access to folders. You can also delegate another user to act on your behalf."
author: "SuryaLashmiS"
ms.localizationpriority: high
ms.subservice: "outlook"
---

# Get Outlook messages in a shared or delegated folder

Outlook lets customers share mail folders with one another and provide read, create, modify, or delete access to individual folders. Outlook also allows a customer to delegate another user to act on the customer's behalf, and access specific mail folders or the customer's entire mailbox; this is also known as "delegation" in Outlook.

Programmatically, Microsoft Graph supports getting messages in mail folders that have been shared by other users, and getting the shared folders themselves. The support also applies to delegated folders.

As an example, Garth has shared and given read access to his Inbox to John. If John signs into your app and provides delegated permissions (Mail.Read.Shared or Mail.ReadWrite.Shared), your app accesses Garth's mail and Garth's Inbox as described in this article.

## Microsoft Graph permissions

Use the delegated permissions, `Mail.Read.Shared` or `Mail.ReadWrite.Shared`, to respectively read or write messages in a shared or delegated folder.

These two permissions don't support [subscribing to change notifications](change-notifications-overview.md) on items in shared or delegated folders. To set up change notification subscriptions on messages in a shared, delegated, or any other user's mail folder in the tenant, use the application permission, `Mail.Read`.

For more information, see [mail permissions](permissions-reference.md).

## Get a message in the shared folder

You can get a specific message in Garth's Inbox:

<!-- { "blockType": "ignored" } -->
```http
GET users/{Garth-userId | Garth-userPrincipalName}/mailfolders('Inbox')/messages/{id}
```

On successful completion, you get HTTP 200 OK and the [message](/graph/api/resources/message) instance identified by `{id}` from Garth's Inbox.

## Get all messages in the shared folder

Get all the messages in Garth's Inbox:

<!-- { "blockType": "ignored" } -->
```http
GET users/{Garth-userId | Garth-userPrincipalName}/mailfolders('Inbox')/messages
```

On successful completion, you get HTTP 200 OK and a collection of [message](/graph/api/resources/message) instances in Garth's Inbox.

## Get the shared folder

Get the folder (Inbox) that Garth has shared with John.

<!-- { "blockType": "ignored" } -->
```http
GET users/{Garth-userId | Garth-userPrincipalName}/mailfolders('Inbox')
```

On successful completion, you get HTTP 200 OK and a [mailFolder](/graph/api/resources/mailfolder) instance that represents Garth's Inbox folder.

The same GET capabilities apply if Garth had delegated John further access to Garth's Inbox, or if Garth had delegated John his entire mailbox.

If Garth hasn't shared his Inbox with John, nor has he delegated his mailbox to John, specifying Garth's user ID or user principal name in those GET operations return an error.


## Next steps

- [Why integrate with Outlook mail](outlook-mail-concept-overview.md)
- [Use the mail API](/graph/api/resources/mail-api-overview) and its [use cases](/graph/api/resources/mail-api-overview#common-use-cases) in Microsoft Graph v1.0
