---
title: Get file by contentStream
author: manikantsinghms
ms.author: maniksingh
description: "Download the contents of the primary stream (file) of a driveItem. Only driveItem objects with the file property can be downloaded."
ms.localizationpriority: medium
ms.date: 3/6/2024
ms.subservice: "sharepoint"
doc_type: apiPageType
---
# Get file by contentStream

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Download the contents of the primary stream (file) of a [driveItem](../resources/driveitem.md). Only **driveItem** objects with the **file** property can be downloaded.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).
<!-- { "blockType": "permissions", "name": "driveitem_get_contentstream" } -->
[!INCLUDE [permissions-table](../includes/permissions/driveitem-get-contentstream-permissions.md)]

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

# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "download-item-content-stream", "scopes": "files.read" } -->

```msgraph-interactive
GET https://graph.microsoft.com/beta/drives/b!fMInbiL5dkK51VbATG0ddrCg6AJpEj9Lm4uGj5HgEi4guyuYp4W5SbH4dPfXTbCF/items/014Y52UITTNSVUQI43PZBJMKLAY6LJBUVE/contentStream
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/download-item-content-stream-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/download-item-content-stream-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/download-item-content-stream-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/download-item-content-stream-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/download-item-content-stream-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/download-item-content-stream-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/download-item-content-stream-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "stream"
} -->

```http
HTTP/1.1 200 OK
Content-Type: text/plain

<File Content>
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

