---
title: "Import an Exchange Item using the Exchange Import-Export API"
description: "Overview of using an import session to import Exchange mailbox items using their FTS format."
author: "cparker-msft"
ms.localizationpriority: medium
ms.subservice: "outlook"
ms.date: 12/06/2024
---

# Import an Exchange Item using the Exchange Import-Export API

Using the Exchange Import-Export API, you can import an Exchange mailbox [item](../api-reference/beta/resources/mailboxitem.md) using the [FastTransfer stream](/openspecs/exchange_server_protocols/ms-oxcfxics/a2648823-0a98-43ee-98e8-590e4f7bcbbe) (FTS) format. Items can be restored to the same mailbox or a different one.

This article illustrates the two steps required to perform the import process. Each step also provides an example for this process. Upon successfully uploading the item, the article shows the response which contains the `itemId` and `changeKey` for the item which can be saved for later use.

## Step 1: Create an import session

[Create an import session](../api-reference/beta/api/mailbox-createimportsession.md) to import an item in a folder in the mailbox.

A successful operation returns HTTP 201 Created and a new [mailboxItemImportSession](../api-reference/beta/resources/mailboxitemimportsession.md) instance, which contains an opaque `importUrl` that you can use in subsequent POST operations to upload items into a folder.

The **mailboxItemImportSession** object in the response also includes the `expirationDateTime` property, which indicates the expiration date/time for the auth token embedded in the `importUrl` property value. After this time, the importUrl expires and is deleted.

### Permissions

Make sure to request the `MailboxItem.ImportExport` Delegated permission or `MailboxItem.ImportExport.All` Application permission to create the **mailboxItemImportSession**.

The opaque URL, returned in the **importUrl** property of the new **mailboxItemImportSession**, is pre-authenticated and contains the appropriate authorization token for subsequent `POST` queries in the `https://outlook.office365.com` domain. Do not customize this URL for the `POST` operations.

### Example: Create mailboxItemImportSession

#### Request

<!-- {
  "blockType": "request",
  "name": "mailboxthis.createimportsession"
  "sampleKeys": ["MBX:e0643f21@a7809c93"]
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:e0643f21@a7809c93/createImportSession
```

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.mailboxItemImportSession"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 232

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.mailboxItemImportSession",
    "importUrl": "https://outlook.office365.com/api/gbeta/Mailboxes('MBX:e0643f21@a7809c93')/importItem?authtoken=eyJhbGciOiJSUzI1NiIsImtpZCI6IjFTeXQ1b",
    "expirationDateTime": "2024-10-17T19:00:48.1052906Z"
}
```

## Step 2: Use the import url to upload an item

To import the item into the mailbox, make a POST request to the URL returned in step 1 in the `importUrl` property of the [mailboxItemImportSession](../api-reference/beta/resources/mailboxitemimportsession.md) resource.

Specify the request body as described below.

### Import URL request headers

Because the initial opaque URL is preauthenticated and contains the appropriate authorization token for subsequent queries for that import session, don't specify an Authorization request header for this operation.

### Import URL request body

|Parameter|Type|Description|
|:---|:---|:---|
|FolderId|String|The ID of the folder into which you want to import the item. Required.|
|Mode|String|Specify the import mode can be `create` or `update`. Required. <br><br> <ul><li>create: Creates a new item. Specifying ItemId or ChangeKey in request body would result in an error.</li><li>update: Updates an existing item. ItemId & ChangeKey mandatory in the request body for updates. The operation would fail if (ItemID + ChangeKey) combination doesn't match with any existing item in folder.</li></ul>|
|Data|String|Data that represents an item in a base64 encoded [FTS format](/openspecs/exchange_server_protocols/ms-oxcfxics/ed7d3455-9bdf-40eb-90bd-8dfe6164a250#gt_12daff0e-4241-4498-a93f-212795ab2450). Required.|
|ItemId|String|The unique identifier for the item. Required during `update`.|
|ChangeKey|String|The version of the item. Required during `update`.|

### Import URL response

If successful, this action returns a `200 OK` response code and an importMailboxItemResponse object in the response body.

### Examples

### Example 1: Create an item in mailbox using import operation

The following example shows how to import a new item into the mailbox in **create** mode.

#### Request

<!-- {
  "blockType": "request",
  "name": "mailboxthis.importItemCreateMode"
  "sampleKeys": ["MBX:e0643f21@a7809c93"]
}
-->

``` http
POST https://outlook.office365.com/api/gbeta/Mailboxes('MBX:e0643f21@a7809c93')/importItem?authtoken=eyJhbGciOiJSUzI1NiIsImtpZCI6IjFTeXQ1b

{
    "FolderId": "EDSVrdi3lRAAEED0yTAAA=",
    "Mode": "create",
    "Data": "AQAAAAgAAAAAAAAAAQAAAAMAAAAYAAAAAQAAAAcDAgAAAAAAwAAAAAAAAEYAJACABAAAAAYAAAAUD9aRhhcCAAAAwHsAAAMAFwABAAAAsIQaABIAAABJAFAATQAuA"
}
```

#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.importMailboxItemResponse"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 232

{
    "@odata.context": "https://outlook.office365.com/api/gbeta/$metadata#microsoft.graph.importMailboxItemResponse",
    "itemId": "EDSVrdi3lRAAFSX03NAAA=",
    "changeKey": "kNnynYavKEihA0la3Yt5UQABUftGQg=="
}
```

### Example 2: Update an existing item in mailbox using import operation

The following example shows how to import a new version of an existing item into the mailbox in **update** mode.

#### Request

<!-- {
  "blockType": "request",
  "name": "mailboxthis.importItemUpdateMode"
  "sampleKeys": ["MBX:e0643f21@a7809c93"]
}
-->
``` http
POST https://outlook.office365.com/api/gbeta/Mailboxes('MBX:e0643f21@a7809c93')/importItem?authtoken=eyJhbGciOiJSUzI1NiIsImtpZCI6IjFTeXQ1b

{
    "FolderId": "EDSVrdi3lRAAEED0yTAAA=",
    "Mode": "update",
    "Data": "AQAAAAgAAAAAAAAAAQAAAAMAAAAYAAAAAQAAAAcDAgAAAAAAwAAAAAAAAEYAJACABAAAAAYAAAAUD9aRhhcCAAAAwHsAAAMAFwABAAAAsIQaABIAAABJAFAATQAuA",
    "ItemId" : "EDSVrdi3lRAAFSX03NAAA=",
    "ChangeKey": "kNnynYavKEihA0la3Yt5UQABUftGQg==" 
}
```

#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.importMailboxItemResponse"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 232

{
    "@odata.context": "https://outlook.office365.com/api/gbeta/$metadata#microsoft.graph.importMailboxItemResponse",
    "itemId": "EDSVrdi3lRAAFSX03NAAA=",
    "changeKey": "kNnynYavKEihA0la3Yt5UQABUftGQf=="
}
```