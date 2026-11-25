---
title: "Use mailbox import and export APIs with archive mailboxes (preview)"
description: "Learn how to discover an archive mailbox, manage its folders, and export and import archive mailbox items by using Microsoft Graph."
author: "mekaus"
ms.localizationpriority: medium
ms.subservice: "outlook"
ms.date: 10/30/2026
ms.topic: how-to
ms.custom: msecd-doc-authoring-1032
ai-usage: ai-generated
#customer intent: As a developer, I want to manage archive mailbox folders and transfer archive mailbox items so that my app can support archive data workflows.
---

# Use mailbox import and export APIs with archive mailboxes (preview)

Use the Microsoft Graph beta mailbox import and export APIs to find an Exchange archive mailbox, manage its folders, and import or export items.

An archive can contain a main archive mailbox and auxiliary mailboxes created by autoexpanding archive. Start folder requests with the main archive mailbox. When a supported read request returns a redirect, follow the URL supplied by Microsoft Graph.

The folder and item operations in this guide use `/admin/exchange/mailboxes` endpoints. Use folder IDs returned by the mailbox import and export folder APIs. Don't use IDs from the workload-specific mail, calendar, or contact APIs.

> [!IMPORTANT]
> The [mailbox import and export APIs](/graph/mailbox-import-export-concept-overview) transfer Exchange items in a full-fidelity opaque format. They aren't designed as a Microsoft 365 backup and restore service. For backup and restore requirements, use [Microsoft 365 Backup](/microsoft-365/backup/backup-overview).

## Prerequisites

Before you begin, make sure you have:

- A work or school account with an archive mailbox. Personal Microsoft accounts aren't supported.
- An access token with the permissions required for your operation.
- An HTTP client that can handle redirects without automatically forwarding credentials to an untrusted host.

For Exchange settings and mailbox import and export operations, use the following permissions.

| Operation | Delegated | Application |
| --- | --- | --- |
| Discover the archive mailbox | User.Read.All | User.Read.All |
| Read folders | MailboxFolder.Read | MailboxFolder.Read.All |
| Create, delete, and update folders and tag properties | MailboxFolder.ReadWrite | MailboxFolder.ReadWrite.All |
| Read items | MailboxItem.Read | MailboxItem.Read.All |
| Export items | MailboxItem.Export | MailboxItem.Export.All |
| Import and export items | MailboxItem.ImportExport | MailboxItem.ImportExport.All |

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
| Read folders or items | Start with the main archive. If Microsoft Graph returns a redirect, follow the supplied URL. |
| Create, update, or delete folders | Send the request to the main archive, even when the content of the folder resides in an auxiliary archive. These operations don't return a redirect. |
| Export items | Handle any per-item routing errors as described in [Handle redirects for individual exported items](#handle-redirects-for-individual-exported-items). |
| Import items | Create an import session for the destination mailbox. If the service identifies a different mailbox, follow [Recover when the destination is in an auxiliary archive](#recover-when-the-destination-is-in-an-auxiliary-archive). |

Create folders through the main archive. Folders created directly in an auxiliary archive don't synchronize back to the main archive and might be missing from Outlook.

## Enumerate archive folders

[List the folders](/graph/api/mailbox-list-folders?view=graph-rest-beta&preserve-view=true) in the main archive. Select the properties needed to identify folders and handle later requests.

```http
GET https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:f10964a6@a7809c93/folders?$select=id,displayName,parentFolderId,parentMailboxUrl,wellKnownName,type
Authorization: Bearer {token}
```

The following example shows a response with the ID and parent information for each folder.

```json
{
  "value": [
    {
      "id": "NJWt2LeVEAAAIBDAAAAA==",
      "displayName": "Inbox",
      "parentFolderId": "NJWt2LeVEAAAIBCAAAAA==",
      "parentMailboxUrl": "https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:f10964a6@a7809c93",
      "wellKnownName": "inbox",
      "type": "IPF.Note"
    }
  ],
  "@odata.nextLink": "https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:f10964a6@a7809c93/folders?$skip=10"
}
```

For each folder, save **id**, **parentFolderId**, and **parentMailboxUrl**. If the response contains **@odata.nextLink**, request that URL and continue until no next link is returned.

A read request for a folder in an auxiliary archive can return a redirect.

```http
HTTP/1.1 308 Permanent Redirect
Location: https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:767fh867@a7809c93/folders/NJWt2LeVEAAAIBDAAAAA==
```

Repeat the request using the complete URL in the `Location` header. Before you forward credentials, verify that the URL uses HTTPS and the expected Microsoft Graph host. Limit the number of redirects your application follows.

## Create an archive folder

To [create a folder](/graph/api/mailbox-post-folders?view=graph-rest-beta&preserve-view=true) at the archive root, send the request to the main archive mailbox.

```http
POST https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:f10964a6@a7809c93/folders
Authorization: Bearer {token}
Content-Type: application/json

{
  "displayName": "Imported mail",
  "type": "IPF.Note"
}
```

To create a child folder, use the main archive mailbox ID and the parent folder **id**. Continue to use the main archive even if the content of the parent folder resides in an auxiliary archive.

```http
POST https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:f10964a6@a7809c93/folders/NJWt2LeVEAAAIBDAAAAA==/childFolders
Authorization: Bearer {token}
Content-Type: application/json

{
  "displayName": "2026",
  "type": "IPF.Note"
}
```

Save the **id** returned for the new folder.

## Delete an archive folder

To [delete a folder](/graph/api/mailbox-delete-folders?view=graph-rest-beta&preserve-view=true), use the main archive mailbox ID and the folder **id**.

```http
DELETE https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:f10964a6@a7809c93/folders/NJWt2LeVEAAAIBDAAAAA==
Authorization: Bearer {token}
```

Don't supply a request body. A successful request returns a `204 No Content` response code.

## Enumerate archive mailbox items

After you obtain a folder ID, [list the items](/graph/api/mailboxfolder-list-items?view=graph-rest-beta&preserve-view=true) in that folder.

```http
GET https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:f10964a6@a7809c93/folders/NJWt2LeVEAAAIBDAAAAA==/items?$select=id,changeKey,type,size&$top=100
Authorization: Bearer {token}
```

Follow every **@odata.nextLink** returned in the response to retrieve the remaining pages.

If the folder or its items reside in an auxiliary archive, the service can return a redirect.

```http
HTTP/1.1 308 Permanent Redirect
Location: https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:767fh867@a7809c93/folders/NJWt2LeVEAAAIBDAAAAA==/items
```

Repeat the GET request using the complete `Location` URL. Verify HTTPS and the expected Microsoft Graph host before you forward credentials, and apply a redirect limit.

## Export archive mailbox items

Use [exportItems](/graph/api/mailbox-exportitems?view=graph-rest-beta&preserve-view=true) to export up to 20 items in one request. All item IDs in the request must belong to the same physical mailbox.

Send the IDs of the items you want to export.

```http
POST https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:f10964a6@a7809c93/exportItems
Authorization: Bearer {token}
Content-Type: application/json

{
  "itemIds": [
    "EDSVrdi3lRAADmpnf1AAA=",
    "EDSVrdi3lRAAD45b7RAAA="
  ]
}
```

Each successful result contains the **data** for the item.

```json
{
  "value": [
    {
      "itemId": "EDSVrdi3lRAADmpnf1AAA=",
      "changeKey": "CQAAABYAAACQ2fKdhq8oSKEDSVrdi3lRAAEu4C+G",
      "data": "AQAAAAgAAAAAAAAAAQAAAAQAA"
    },
    {
      "itemId": "EDSVrdi3lRAAD45b7RAAA=",
      "changeKey": "CQAAABYAAACQ2fKdhq8oSKEDSVrdi3lRAAD4pUax",
      "data": "AQAAAAgAAAAAAAAAAQAAAAQAB"
    }
  ]
}
```

Store **data** unchanged. It is an opaque, Base64-encoded stream that preserves the full fidelity of the item. Don't parse or modify it.

### Handle redirects for individual exported items

A request can return `200 OK` even when some items must be exported from an auxiliary archive. Check each result rather than treating the entire response as a completed export.

In the following example, the first item succeeds. The second returns `ErrorArchiveFolderMovedPermanently` and a URL for retrying that item.

```json
{
  "value": [
    {
      "itemId": "AAMkADHGHGDDDSSAFDHGJ",
      "changeKey": "CQAAABYAAAC92FzB9+QsR5Q6SPVnShx0AAAAABQ/",
      "data": "AQAAAAgAAAAAAAAAAQAAAAQAA"
    },
    {
      "itemId": "AQMkADVmZgBkYzA2OSADDSG",
      "Error": {
        "code": "ErrorArchiveFolderMovedPermanently",
        "message": "https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:767fh867@a7809c93/exportItems"
      }
    }
  ]
}
```

Use these steps to handle the response:

1. Save each successful result.
1. Collect only the item IDs with an `ErrorArchiveFolderMovedPermanently` error.
1. Group those IDs by the URL in **Error.message**.
1. Verify that each URL uses HTTPS and the expected Microsoft Graph host.
1. Retry each group using its supplied URL.

Don't retry items that already succeeded.

For the failed item in the example, send the following request.

```http
POST https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:767fh867@a7809c93/exportItems
Authorization: Bearer {token}
Content-Type: application/json

{
  "itemIds": [
    "AQMkADVmZgBkYzA2OSADDSG"
  ]
}
```

## Import archive mailbox items

Import an item by creating an import session, then send the exported **data** to the **importUrl** returned for the session.

First, [create an import session](/graph/api/mailbox-createimportsession?view=graph-rest-beta&preserve-view=true) in the physical mailbox that contains the destination folder.

```http
POST https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:f10964a6@a7809c93/createImportSession
Authorization: Bearer {token}
```

The response provides **importUrl** and its expiration time.

```json
{
  "importUrl": "https://outlook.office365.com/api/gbeta/Mailboxes('MBX:destination@tenant')/importItem?authtoken={session-token}",
  "expirationDateTime": "2026-09-08T12:00:00Z"
}
```

Use **importUrl** exactly as returned. It is preauthenticated, so don't add an `Authorization` header to the upload request.

Send the exported data to that URL. Use a destination **FolderId** returned by the mailbox import and export folder APIs.

```http
POST {importUrl}
Content-Type: application/json

{
  "FolderId": "EDSVrdi3lRAAEED0yTAAA=",
  "Mode": "create",
  "Data": "AQAAAAgAAAAAAAAAAQAAAAQAA"
}
```

In the previous example, `{importUrl}` is the complete URL returned by the session. Don't construct the URL from the example mailbox IDs.

A successful import returns the item ID and change key.

```json
{
  "itemId": "EDSVrdi3lRAAFSX03NAAA=",
  "changeKey": "kNnynYavKEihA0la3Yt5UQABUftGQg=="
}
```

To update an existing item, set **Mode** to `update` and include its **ItemId** and **ChangeKey**. For the complete procedure, see [Import an Exchange mailbox item using the mailbox import and export APIs](/graph/import-exchange-mailbox-item).

### Recover when the destination is in an auxiliary archive

An import can fail when its session targets a different physical mailbox from the destination folder. The response identifies the mailbox required for the session.

The following example shows the response.

```http
HTTP/1.1 308 Permanent Redirect
Content-Type: application/json

{
  "error": {
    "code": "ErrorArchiveFolderMovedPermanently",
    "message": "Invalid import session. The target session is expected in mailbox MBX:auxiliary@tenant"
  }
}
```

To retry the import:

1. Read the target mailbox ID from the error.
1. Create a new import session for that mailbox.
1. Use the **importUrl** for the new session.
1. Retry with the same folder ID and unchanged **Data**.
1. Stop using the original session.

Retrying the old import URL won't resolve the mailbox mismatch.

## Work with special folders and folder properties

Use these optional tasks when your application needs well-known folders, *Recoverable Items*, or retention and archive tag properties.

### Find a well-known folder

For archive access, use a folder ID in the request path, not a well-known folder name.

The following example shows how to list folders and request the **wellKnownName** property.

```http
GET https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:f10964a6@a7809c93/folders?$select=id,displayName,parentFolderId,parentMailboxUrl,wellKnownName
Authorization: Bearer {token}
```

Find the required **wellKnownName**, then use that folder **id** in subsequent requests.

Match **wellKnownName**, not **displayName**. Display names can be localized or renamed.

### Find the Recoverable Items root

The *Recoverable Items* root might not appear in the initial folder collection. Use the folder hierarchy to find it:

1. List archive folders and save the **parentFolderId** for one folder.

    ```http
    GET https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:f10964a6@a7809c93/folders?$select=id,parentFolderId,parentMailboxUrl,wellKnownName
    Authorization: Bearer {token}
    ```

1. Get that parent folder. Its **parentFolderId** identifies the mailbox root.

    ```http
    GET https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:f10964a6@a7809c93/folders/NJWt2LeVEAAAIBCAAAAA==?$select=id,parentFolderId,parentMailboxUrl,wellKnownName
    Authorization: Bearer {token}
    ```

1. List the child folders of the mailbox root.

    ```http
    GET https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:f10964a6@a7809c93/folders/NJWt2LeVEAAAIAAAAAAA==/childFolders?$select=id,displayName,parentFolderId,parentMailboxUrl,wellKnownName,type
    Authorization: Bearer {token}
    ```

1. Find the folder whose **wellKnownName** is `recoverableitemsroot` and save its **id**.
1. List the child folders by using the folder ID.

    ```http
    GET https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:f10964a6@a7809c93/folders/NJWt2LeVEAAAIBFAAAAA==/childFolders?$select=id,displayName,parentFolderId,parentMailboxUrl,wellKnownName,type
    Authorization: Bearer {token}
    ```

Follow pagination links and archive redirects at each collection step. Don't substitute `archivemsgfolderroot` or `recoverableitemsroot` for a folder ID in the URL.

### Read retention and archive tag properties

Read retention and archive tag values through single-value legacy extended properties.

| Graph property ID | MAPI name | Meaning |
| --- | --- | --- |
| Binary 0x3018 | PR_ARCHIVE_TAG | Archive tag GUID |
| Binary 0x3019 | PR_POLICY_TAG | Retention tag GUID |
| Integer 0x301A | PR_RETENTION_PERIOD | Retention period in days |
| Integer 0x301D | PR_RETENTION_FLAGS | Retention behavior flags |
| Integer 0x301E | PR_ARCHIVE_PERIOD | Archive period in days |

The following example shows how to read the archive tag by requesting `Binary 0x3018`.

```http
GET https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:f10964a6@a7809c93/folders/NJWt2LeVEAAAIBDAAAAA==?$select=id,displayName&$expand=singleValueExtendedProperties($filter=id%20eq%20'Binary%200x3018')
Authorization: Bearer {token}
```

The following example shows the response.

```json
{
  "id": "NJWt2LeVEAAAIBDAAAAA==",
  "displayName": "Projects",
  "singleValueExtendedProperties": [
    {
      "id": "Binary 0x3018",
      "value": "pHMJQi3xSk+TfxyiAM9YyA=="
    }
  ]
}
```

Use the same request pattern for another property ID. Integer property values are returned as strings in **value**.

### Update retention and archive tag properties

Use a tag from the target Exchange Online organization. Get its **RetentionId** and convert its GUID bytes to Base64.

```powershell
$tag = Get-RetentionPolicyTag "<Retention tag name>"
$tag | Format-List RetentionId
$base64Tag = [Convert]::ToBase64String($tag.RetentionId.ToByteArray())
$base64Tag
```

The encoded tag is tenant-specific. Don't send a plain GUID or copy a tag value from another tenant.

The following example shows how to set an archive tag and archive period.

```http
PATCH https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:f10964a6@a7809c93/folders/NJWt2LeVEAAAIBDAAAAA==
Authorization: Bearer {token}
Content-Type: application/json

{
  "singleValueExtendedProperties": [
    {
      "id": "Binary 0x3018",
      "value": "Z0UjAauJ780BI0VniavN7w=="
    },
    {
      "id": "Integer 0x301E",
      "value": "730"
    }
  ]
}
```

The following example shows how to set a retention tag and retention period.

```http
PATCH https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:f10964a6@a7809c93/folders/NJWt2LeVEAAAIBDAAAAA==
Authorization: Bearer {token}
Content-Type: application/json

{
  "singleValueExtendedProperties": [
    {
      "id": "Binary 0x3019",
      "value": "Z0UjAauJ780BI0VniavN7w=="
    },
    {
      "id": "Integer 0x301A",
      "value": "365"
    }
  ]
}
```

The tag values in these requests are examples. Use the value obtained from your target organization.

After an update, read the properties again to verify the result. Validate GUID byte ordering and supported folder classes in a test tenant before broad deployment.

## Delta synchronization

Use the documented folder and item delta APIs. Treat **@odata.nextLink** and **@odata.deltaLink** as opaque URLs: request them exactly as returned.

If the service reports an invalid or expired delta token, restart synchronization for the affected scope.

Some imported items might be missing from the initial `/items/delta` response because **ReceivedTime** (`PR_MESSAGE_DELIVERY_TIME`) isn't populated.

To include affected items that don't have this property, send:

```http
Prefer: odata.track-changes
```

## Common questions

### Do I need to discover all auxiliary archive mailboxes?

No. Start folder requests with the main archive mailbox and follow the URL returned when a supported request is redirected.

### Do folder create, update, and delete operations require redirection?

No. Send these operations to the main archive mailbox, even when the content of the folder resides in an auxiliary archive.

### Why is a folder I created in an auxiliary archive missing from Outlook?

Folders created directly in an auxiliary archive don't synchronize back to the main archive. Create folders through the main archive instead.

### Is non-IPM access blocked?

No. Existing API permissions and operation-specific restrictions still apply.

## Related content

- [Mailbox import and export APIs in Microsoft Graph](/graph/api/resources/mailbox-import-export-api-overview?view=graph-rest-beta&preserve-view=true)
- [Import an Exchange mailbox item using the mailbox import and export APIs](/graph/import-exchange-mailbox-item)
- [Handle archive mailbox redirects](/graph/handle-archive-mailbox-redirects)
