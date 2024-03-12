---
title: Get file by contentStream
author: manikantsinghms
ms.author: maniksingh
description: "Download the contents of the primary stream (file) of a driveItem. Only driveItem objects with the file property can be downloaded."
ms.localizationpriority: medium
ms.date: 3/6/2024
ms.prod: "sharepoint"
doc_type: apiPageType
---
# Get file by contentStream

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Download the contents of the primary stream (file) of a [driveItem](../resources/driveitem.md). Only **driveItem** objects with the **file** property can be downloaded.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "driveitem_get_contentstream" } -->
|Permission type|Least privileged permissions|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|Files.Read|Files.ReadWrite, Files.Read.All, Files.ReadWrite.All, Sites.Read.All, Sites.ReadWrite.All|
|Delegated (personal Microsoft account)|Files.Read|Files.ReadWrite, Files.Read.All, Files.ReadWrite.All|
|Application|Files.Read.All|Files.ReadWrite.All, Sites.Read.All, Sites.ReadWrite.All|

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /drives/{drive-id}/items/{item-id}/contentStream
GET /groups/{group-id}/drive/items/{item-id}/contentStream
GET /me/drive/root:/{item-path}:/contentStream
GET /me/drive/items/{item-id}/contentStream
GET /shares/{shareIdOrEncodedSharingUrl}/driveItem/contentStream
GET /sites/{siteId}/drive/items/{item-id}/contentStream
GET /users/{userId}/drive/items/{item-id}/contentStream
```

## Optional query parameters

This method does not support query methods.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Range|bytes={range-start}-{range-end}/{size}. Optional. Use to download a partial range of bytes from the file. Specified in [RFC 2616](https://www.ietf.org/rfc/rfc2616.txt).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` HTTP response code.


## Examples

### Example 1: Download file contents

The following example shows how to download a file.

#### Request

<!-- { "blockType": "request", "name": "download-item-content-stream", "scopes": "files.read" } -->

```http
GET https://graph.microsoft.com/beta/me/drive/items/014Y52UITTNSVUQI43PZBJMKLAY6LJBUVE/contentStream
```

#### Response
<!-- { "blockType": "ignored" } --> 

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "stream"
} -->

```http
HTTP/1.1 200 OK
Content-Type: text/plain
The file content is streamed directly to client.
```

<!-- {
  "type": "#page.annotation",
  "description": "Download the contents of a driveItem.",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Items/Download",
  "suppressions": [
  ]
} -->

