---
author: spgraph-docs-team
description: "Download the contents of the primary stream (file) of a driveItem. Only driveItems with the file property can be downloaded."
title: Download a file
ms.localizationpriority: medium
ms.prod: "sharepoint"
doc_type: apiPageType
---
# Download the contents of a driveItem

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Download the contents of the primary stream (file) of a [driveItem](../resources/driveitem.md). Only **driveItems** with the **file** property can be downloaded.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "driveitem_get_content" } -->
[!INCLUDE [permissions-table](../includes/permissions/driveitem-get-content-permissions.md)]

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

## Example

Here's an example to download a complete file.

### Request

# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "download-item-content-stream", "scopes": "files.read" } -->

```msgraph-interactive
GET /me/drive/items/{item-id}/contentStream
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/download-item-content-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/download-item-content-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/download-item-content-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/download-item-content-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/download-item-content-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/download-item-content-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/download-item-content-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/download-item-content-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

If request is successful, response will have the file content.

<!-- { "blockType": "response" } -->

```http
HTTP/1.1 200 OK

File content streamed directly via contentStream api.
```

## Partial range downloads

To download a partial range of bytes from the file, your app can use the `Range` header as specified in [RFC 2616](https://www.ietf.org/rfc/rfc2616.txt).


<!-- { "blockType": "request", "opaqueUrl": true, "name": "download-item-partial", "scopes": "files.read" } -->

```http
GET /drives/{drive-id}/items/{item-id}/contentStream
Range: bytes=0-1023
```

The call returns an `HTTP 206 Partial Content` response with the request range of bytes from the file.
If the range can't be generated, then the Range header may be ignored and an `HTTP 200` response would be returned with the full contents of the file.

<!-- { "blockType": "response", "name": "download-item-partial", "@odata.type": "stream" } -->

```http
HTTP/1.1 206 Partial Content
Content-Range: bytes 0-1023/2048

<first 1024 bytes of file>
```

### Error responses

See [Error Responses][error-response] for more info about
how errors are returned.

[error-response]: /graph/errors

<!--
{
  "type": "#page.annotation",
  "description": "Download the contents of a DriveItem.",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Items/Download",
  "suppressions": [
  ]
}
-->


