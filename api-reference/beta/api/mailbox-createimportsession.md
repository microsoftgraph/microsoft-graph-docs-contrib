---
title: "mailbox: importItem"
description: "This function allows user to import an Exchange mailbox item using its FTS format"
author: "cparker-msft"
ms.date: 12/06/2024
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# mailbox: importItem

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This function allows user to import an Exchange mailbox [item](../resources/mailboxitem.md) using the [FastTransfer stream](https://learn.microsoft.com/en-us/openspecs/exchange_server_protocols/ms-oxcfxics/a2648823-0a98-43ee-98e8-590e4f7bcbbe) (FTS) format. Import is a two step process. Items can be restored back to the same or a different mailbox.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "mailbox-createimportsession-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/mailbox-createimportsession-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /admin/exchange/mailboxes/{mailboxId}/createImportSession
```

## Step 1: Create an import session

Create an import session to import an item in a folder in the mailbox.

A successful operation returns HTTP 201 Created and a new [mailboxItemImportSession](../resources/mailboxitemimportsession.md) instance, which contains an opaque `importUrl` that you can use in subsequent POST operations to upload items into a folder.

The **mailboxItemImportSession** object in the response also includes the `expirationDateTime` property, which indicates the expiration date/time for the auth token embedded in the `importUrl` property value. After this time, the importUrl expires and is deleted.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `200 OK` response code and a [mailboxItemImportSession](../resources/mailboxitemimportsession.md) in the response body.

## Step 2: Use the import url to upload an item

To import the item into the mailbox, make a POST request to the URL returned in step 1 in the `importUrl` property of the [mailboxItemImportSession](../resources/mailboxitemimportsession.md) resource.

Specify the request body as described below.

## Import URL request headers

Because the initial opaque URL is preauthenticated and contains the appropriate authorization token for subsequent queries for that import session, don't specify an Authorization request header for this operation.

## Import URL request body

|Parameter|Type|Description|
|:---|:---|:---|
|FolderId|String|The id of the folder into which you want to import the item. Required.|
|Mode|String|Specify the import mode can be `create` or `update`. Required. <br><br> <ul><li>create: Creates a new item. Specifying ItemId or ChangeKey in request body would result in an error.</li><li>update: Updates an existing item. ItemId & ChangeKey mandatory in the request body for updates. The operation would fail if (ItemID + ChangeKey) combination doesn't match with any existing item in folder.</li></ul>|
|Data|String|Data representing item in a base64 encoded [FTS format](https://docs.microsoft.com/en-us/openspecs/exchange_server_protocols/ms-oxcfxics/ed7d3455-9bdf-40eb-90bd-8dfe6164a250#gt_12daff0e-4241-4498-a93f-212795ab2450). Required.|
|ItemId|String|The item's unique identifier. Required during `update`.|
|ChangeKey|String|The version of the item. Required during `update`.|

## Import URL response

If successful, this action returns a `200 OK` response code and a importMailboxItemResponse object in the response body.

## Examples

### Example 1: Create an import session

#### Create mailboxItemImportSession request

Here's an example of how to create an import session. The opaque URL, returned in the `importUrl` property of the response, is preauthenticated and contains the appropriate authorization token for subsequent POST queries in the https://outlook.office.com domain. That token expires by `expirationDateTime`. Don't customize this URL for subsequent POST operations.

<!-- {
  "blockType": "request",
  "name": "mailboxthis.createimportsession"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:e0643f21@a7809c93/createImportSession
```

#### Create mailboxItemImportSession Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.OutlookServices.mailboxItemImportSession"
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

### Example 2: Create an item in mailbox using import operation

Here's an example of importing a new item into the mailbox in **create** mode.

#### Create mailboxItem request

``` http
POST https://outlook.office365.com/api/gbeta/Mailboxes('MBX:e0643f21@a7809c93')/importItem?authtoken=eyJhbGciOiJSUzI1NiIsImtpZCI6IjFTeXQ1b
{
    "FolderId": "EDSVrdi3lRAAEED0yTAAA=",
    "Mode": "create",
    "Data": "AQAAAAgAAAAAAAAAAQAAAAMAAAAYAAAAAQAAAAcDAgAAAAAAwAAAAAAAAEYAJACABAAAAAYAAAAUD9aRhhcCAAAAwHsAAAMAFwABAAAAsIQaABIAAABJAFAATQAuA"
}
```

#### Create mailboxItem response

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

### Example 3: Update an existing item in mailbox using import operation

Here's an example of importing a new version of an existing item into the mailbox in **update** mode.

#### Update mailboxItem request

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

#### Update mailboxItem response

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
