---
title: "Import an Exchange mailbox item using the mailbox import and export APIs"
description: "Learn how to import an Exchange mailbox item using its FastTransfer stream format."
author: "cparker-msft"
ms.localizationpriority: medium
ms.subservice: "outlook"
ms.date: 12/06/2024
ms.topic: how-to
---

# Import an Exchange mailbox item using the mailbox import and export APIs

The mailbox import and export APIs allow you to import an Exchange [mailbox item](/graph/api/resources/mailboxitem) that was exported using [exportItems](/graph/api/mailbox-exportitems). Items can be restored to the same mailbox or a different one.

This article describes the two steps required to perform the import process, with an example provided for each step. After successfully uploading the item, you get a response that contains the **itemId** and **changeKey**, which can be saved for later use.

## Step 1: Create an import session

[Create an import session](/graph/api/mailbox-createimportsession) to import an item in a folder in the mailbox.

A successful operation returns a `HTTP 201 Created` response code and a new [mailboxItemImportSession](/graph/api/resources/mailboxitemimportsession) object in the response body, which contains an opaque **importUrl** that you can use in subsequent POST operations to upload items into a folder.

The **mailboxItemImportSession** object in the response also includes the **expirationDateTime** property that indicates the expiration date and time for the auth token embedded in the **importUrl** property value. After this time, the **importUrl** expires and is deleted.

### Permissions

Make sure to request the `MailboxItem.ImportExport` delegated permission or `MailboxItem.ImportExport.All` application permission to create a **mailboxItemImportSession**.

The opaque URL, returned in the **importUrl** property of the new **mailboxItemImportSession**, is preauthenticated and contains the appropriate authorization token for subsequent POST queries in the `https://outlook.office365.com` domain. Don't customize this URL for the POST operations.

### Example: Create a mailbox item import session

The following example shows how to create a **mailboxItemImportSession** object.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "mailboxthis.createimportsession"
  "sampleKeys": ["MBX:e0643f21@a7809c93"]
}
-->
```http
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
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 232

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.mailboxItemImportSession",
    "importUrl": "https://outlook.office365.com/api/gbeta/Mailboxes('MBX:e0643f21@a7809c93')/importItem?authtoken=eyJhbGciOiJSUzI1NiIsImtpZCI6IjFTeXQ1b",
    "expirationDateTime": "2024-10-17T19:00:48.1052906Z"
}
```

## Step 2: Use the import URL to upload an item

To import the item into the mailbox, make a POST request to the URL returned in the previous step in the **importUrl** property of the [mailboxItemImportSession](/graph/api/resources/mailboxitemimportsession) object.

Specify the request body as described in the [Request body](#request-body) section.

### Request headers

Because the initial opaque URL is preauthenticated and contains the appropriate authorization token for subsequent queries for that import session, don't specify an `Authorization` request header for this operation.

### Request body

|Parameter|Type|Description|
|:---|:---|:---|
|FolderId|String|The ID of the folder into which you want to import the item. Required.|
|Mode|String|Specifies that the import mode can be `create` or `update`. Required. <br><br> <ul><li>`create`: Creates a new item. If you specify **ItemId** or **ChangeKey** in the request body, it results in an error.</li><li>`update`: Updates an existing item. **ItemId** and **ChangeKey** are required in the request body for updates. The operation fails if the combination of **ItemId** and **ChangeKey** doesn't match with any existing item in the folder.</li></ul>|
|Data|String|Data that represents an item in a base64 encoded [FTS format](/openspecs/exchange_server_protocols/ms-oxcfxics/ed7d3455-9bdf-40eb-90bd-8dfe6164a250#gt_12daff0e-4241-4498-a93f-212795ab2450). Required.|
|ItemId|String|The unique identifier for the item. Required during `update`.|
|ChangeKey|String|The version of the item. Required during `update`.|

### Response

If successful, this action returns a `200 OK` response code and an **importMailboxItemResponse** object in the response body.

### Examples

#### Example 1: Create an item in a mailbox using the import operation

The following example shows how to import a new item into the mailbox in `create` mode.

##### Request

The following example shows a request.

<!-- {
  "blockType": "ignored",
  "name": "mailboxthis.importItemCreateMode"
  "sampleKeys": ["MBX:e0643f21@a7809c93"]
}
-->

```http
POST https://outlook.office365.com/api/gbeta/Mailboxes('MBX:e0643f21@a7809c93')/importItem?authtoken=eyJhbGciOiJSUzI1NiIsImtpZCI6IjFTeXQ1b

{
    "FolderId": "EDSVrdi3lRAAEED0yTAAA=",
    "Mode": "create",
    "Data": "AQAAAAgAAAAAAAAAAQAAAAMAAAAYAAAAAQAAAAcDAgAAAAAAwAAAAAAAAEYAJACABAAAAAYAAAAUD9aRhhcCAAAAwHsAAAMAFwABAAAAsIQaABIAAABJAFAATQAuA"
}
```

##### Response

The following example shows the response.

<!-- {
  "blockType": "ignored",
  "truncated": true,
  "@odata.type": "microsoft.graph.importMailboxItemResponse"
}
-->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 232

{
    "@odata.context": "https://outlook.office365.com/api/gbeta/$metadata#microsoft.graph.importMailboxItemResponse",
    "itemId": "EDSVrdi3lRAAFSX03NAAA=",
    "changeKey": "kNnynYavKEihA0la3Yt5UQABUftGQg=="
}
```

#### Example 2: Update an existing item in a mailbox using the import operation

The following example shows how to import a new version of an existing item into the mailbox in `update` mode.

##### Request

The following example shows a request.

<!-- {
  "blockType": "ignored",
  "name": "mailboxthis.importItemUpdateMode"
  "sampleKeys": ["MBX:e0643f21@a7809c93"]
}
-->
```http
POST https://outlook.office365.com/api/gbeta/Mailboxes('MBX:e0643f21@a7809c93')/importItem?authtoken=eyJhbGciOiJSUzI1NiIsImtpZCI6IjFTeXQ1b

{
    "FolderId": "EDSVrdi3lRAAEED0yTAAA=",
    "Mode": "update",
    "Data": "AQAAAAgAAAAAAAAAAQAAAAMAAAAYAAAAAQAAAAcDAgAAAAAAwAAAAAAAAEYAJACABAAAAAYAAAAUD9aRhhcCAAAAwHsAAAMAFwABAAAAsIQaABIAAABJAFAATQAuA",
    "ItemId" : "EDSVrdi3lRAAFSX03NAAA=",
    "ChangeKey": "kNnynYavKEihA0la3Yt5UQABUftGQg==" 
}
```

##### Response

The following example shows the response.

<!-- {
  "blockType": "ignored",
  "truncated": true,
  "@odata.type": "microsoft.graph.importMailboxItemResponse"
}
-->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 232

{
    "@odata.context": "https://outlook.office365.com/api/gbeta/$metadata#microsoft.graph.importMailboxItemResponse",
    "itemId": "EDSVrdi3lRAAFSX03NAAA=",
    "changeKey": "kNnynYavKEihA0la3Yt5UQABUftGQf=="
}
```
