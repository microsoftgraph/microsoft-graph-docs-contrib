---
title: "Use Mail APIs with Exchange archive mailboxes (preview)"
description: "Learn how to access Exchange archive folders and messages, follow redirects, create folders, and synchronize changes with Microsoft Graph beta Mail APIs."
author: Mekaus
ms.author: Mekaus
ms.service: microsoft-graph
ms.subservice: outlook
ms.localizationpriority: medium
ms.date: 11/18/2026
ms.topic: how-to
ms.custom: msecd-doc-authoring-1032
ai-usage: ai-generated
#customer intent: As a developer, I want to access Exchange archive folders and messages with Mail APIs so that my application follows archive redirects and synchronizes message changes.
---

# Use Mail APIs with Exchange archive mailboxes (preview)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../api-reference/includes/beta-disclaimer.md)]

Use Microsoft Graph beta Mail APIs to list messages, create folders, and synchronize message changes in an Exchange archive mailbox.

This guide explains how to follow redirects when reading archive folders and messages, where to create archive folders, and how to keep track of message changes.

The folder and message examples in this guide use `/users/.../mailFolders` endpoints. Use the folder IDs returned by the Mail API operation you're calling.

## Prerequisites

Before you begin, make sure you have:

- A work or school account with an archive mailbox. Personal Microsoft accounts aren't supported.
- An access token with the permissions required for your operation.
- An HTTP client that can handle redirects without automatically forwarding credentials to an untrusted host.

For the Exchange settings request used to discover the archive mailbox, use the following permissions:

| Operation | Delegated | Application |
| --- | --- | --- |
| Discover the archive mailbox | User.Read.All | User.Read.All |

For the Mail API operations, use the permissions documented for [List messages](/graph/api/user-list-messages?view=graph-rest-beta&preserve-view=true), [Create mailFolder](/graph/api/user-post-mailfolders?view=graph-rest-beta&preserve-view=true), and [Create childFolder](/graph/api/mailfolder-post-childfolders?view=graph-rest-beta&preserve-view=true).

## How archive mailboxes work

The *main archive* maintains the complete folder hierarchy. As the archive grows, *auxiliary archives* store additional content. A folder can appear in the main archive, and its messages can be stored in an auxiliary archive.

When you read a folder or message, or synchronize message changes, a supported API can return `308 Permanent Redirect`. The `Location` header in the response contains the URL to use for the content.

## Discover the archive mailbox

First, get the user's [Exchange settings](/graph/api/resources/exchangesettings?view=graph-rest-beta&preserve-view=true). The response provides the mailbox ID you need for archive requests.

The following example shows how to request the Exchange settings for a user.

```http
GET https://graph.microsoft.com/beta/users/alex.wilber@contoso.com/settings/exchange
Authorization: Bearer {token}
```

The following example shows a response with separate IDs for the primary mailbox and the in-place archive mailbox.

```json
{
  "primaryMailboxId": "MBX:e0643f21@a7809c93",
  "inPlaceArchiveMailboxId": "MBX:f10964a6@a7809c93"
}
```

Save **inPlaceArchiveMailboxId**. In these examples, its value is `MBX:f10964a6@a7809c93`.

Use that returned value to address the main archive mailbox. Don't construct an archive mailbox ID from the user's email address or primary mailbox ID.

## Always target the main archive mailbox

Use the main archive mailbox ID when you start archive folder operations. You don't need to discover auxiliary archive mailboxes before you make a request.

| Operation | What your application should do |
| --- | --- |
| Supported folder and message reads | Start with the main archive. If Microsoft Graph returns a redirect, follow the supplied URL. |
| Create, update, or delete folders | Send the request to the main archive, even when the content in the folder resides in an auxiliary archive. These operations don't return a redirect. |

Create folders through the main archive. Folders created directly in an auxiliary archive don't synchronize back to the main archive and don't appear in Outlook.

## Follow a redirect

For supported folder reads, message reads, and message delta requests, follow these steps:

1. Make your request using the main archive mailbox ID.
1. If the response is `308 Permanent Redirect`, read the URL in the `Location` header.
1. Make the same request to that URL. The response returns the requested data.

The following flow shows a read request that is redirected.

```text
App                 Microsoft Graph
 |  Read archive content   |
 |------------------------>|
 |  308 + Location URL     |
 |<------------------------|
 |  GET the Location URL   |
 |------------------------>|
 |  Requested data         |
 |<------------------------|
```

If no redirect is needed, the original request returns the data directly.

## List messages in an archive folder using the Mail API

Start the read request with the main archive mailbox ID and the target folder ID.

In the following example, the main archive is `MBX:f10964a6@a7809c93`. If its content resides in an auxiliary archive, the service supplies the URL for the follow-up request.

### Request

The following request shows how to list the message IDs and subjects in the archive folder.

```http
GET https://graph.microsoft.com/beta/users/MBX:f10964a6@a7809c93/mailFolders/AAMkAGVmMDEzMDAAAIBDAAAAA==/messages?$select=id,subject
```

### Redirect response

If the content is in an auxiliary archive, the service might return the following response.

```http
HTTP/1.1 308 Permanent Redirect
Location: https://graph.microsoft.com/beta/users/MBX:767fh867@a7809c93/mailFolders/AAMkAGVmMDEzMDAAAIBDAAAAA==/messages?$select=id,subject
Content-Length: 0
```

### Follow-up request

Make a GET request to the complete `Location` URL. Don't construct the URL yourself or replace its IDs.

```http
GET https://graph.microsoft.com/beta/users/MBX:767fh867@a7809c93/mailFolders/AAMkAGVmMDEzMDAAAIBDAAAAA==/messages?$select=id,subject
```

A successful request returns `200 OK` with the messages. The same redirect-handling approach applies to supported folder reads, message reads, and message delta requests.

Use the required Mail API authentication and permissions. Before you send credentials to a redirect URL, verify HTTPS and a trusted Microsoft Graph endpoint. Check whether your SDK handles `308 Permanent Redirect` automatically; otherwise, handle it in your application and limit redirects.

## Create folders in the main archive using the Mail API

Create archive folders through the main archive, including folders whose content resides in an auxiliary archive.

When a folder expands to an auxiliary archive, the service automatically creates the corresponding folder in the auxiliary archive. You don't need to create it yourself.

Don't create folders directly in an auxiliary archive. They don't synchronize back to the main archive or appear in Outlook. Don't reuse a URL from a content-read redirect to create folders.

### Create a folder

The following request shows how to create a folder.

```http
POST https://graph.microsoft.com/beta/users/MBX:f10964a6@a7809c93/mailFolders
Content-Type: application/json

{
  "displayName": "Project archive"
}
```

### Create a child folder

The following request shows how to create a child folder. Use the main archive mailbox ID and the parent folder ID from the main archive hierarchy in the request URL.

```http
POST https://graph.microsoft.com/beta/users/MBX:f10964a6@a7809c93/mailFolders/AAMkAGVmMDEzMDAAAIBDAAAAA==/childFolders
Content-Type: application/json

{
  "displayName": "Project documents"
}
```

## Read multiple pages and synchronize changes

If a response contains **@odata.nextLink**, request that complete URL to get the next page.

To track message changes in a folder, use a message delta request. The following example uses the same main archive mailbox and Mail API folder IDs from the previous list messages example.

```http
GET https://graph.microsoft.com/beta/users/MBX:f10964a6@a7809c93/mailFolders/AAMkAGVmMDEzMDAAAIBDAAAAA==/messages/delta
```

To process the synchronization response:

1. If the request returns `308 Permanent Redirect`, follow the URL in the `Location` header.
1. Follow each **@odata.nextLink** until the response contains **@odata.deltaLink**.
1. Save the complete delta link for the next synchronization.

Keep a separate delta link for each folder. Use returned links exactly as provided; don't edit their mailbox IDs or tokens. If the API reports that synchronization state is no longer valid, follow its recovery instructions.

For the complete synchronization procedure, see [Synchronize message changes](/graph/delta-query-messages).

## Attachment upload sessions

The [attachment: createUploadSession](/graph/api/attachment-createuploadsession?view=graph-rest-beta&preserve-view=true) method allows you to add large attachments to messages in primary mailboxes. It isn't supported for archive mailboxes; an archive request might return a `404 Not Found` response code.

To place an item directly into an archive mailbox, use the import API instead. For that separate workflow, see [Import an Exchange mailbox item using the mailbox import and export APIs](/graph/import-exchange-mailbox-item).

## Common questions

### Do I need to discover all auxiliary archive mailboxes?

No. Start folder requests with the main archive mailbox and follow the URL returned when a supported request is redirected.

### Do folder create, update, and delete operations require redirection?

No. Send these operations to the main archive mailbox, even when the content of the folder resides in an auxiliary archive.

### Why is a folder I created in an auxiliary archive missing from Outlook?

Folders created directly in an auxiliary archive don't synchronize back to the main archive. Create folders through the main archive instead.

### Can I use /me/mailFolders/archive to access the archive mailbox?

No. That URL identifies the *One-Click Archive* folder in the primary mailbox, not the Exchange archive mailbox.

For Exchange archive access, use the archive mailbox identifier and folder IDs. Well-known folder names aren't supported in archive request paths.

### Is non-IPM access blocked?

No. Existing API permissions and operation-specific restrictions still apply.

## Related content

- [Handle archive mailbox redirects](/graph/handle-archive-mailbox-redirects)
- [Get an archive folder](/graph/api/mailfolder-get?view=graph-rest-beta&preserve-view=true)
- [Get a message](/graph/api/message-get?view=graph-rest-beta&preserve-view=true)
