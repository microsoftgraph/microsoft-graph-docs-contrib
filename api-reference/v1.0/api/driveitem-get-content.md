---
author: spgraph-docs-team
title: Download driveItem content
ms.localizationpriority: high
ms.subservice: "sharepoint"
description: "Download the contents of the primary stream (file) of a driveItem. Only driveItems with the file property can be downloaded."
doc_type: apiPageType
ms.date: 06/12/2024
---
# Download driveItem content

Namespace: microsoft.graph

Download the contents of the primary stream (file) of a [driveItem](../resources/driveitem.md). Only **driveItem** objects with the **file** property can be downloaded.

To get the ID of the item to be downloaded, see [Get driveItem](driveitem-get.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "driveitem_get_content" } -->
[!INCLUDE [permissions-table](../includes/permissions/driveitem-get-content-permissions.md)]

[!INCLUDE [app-permissions](../includes/sharepoint-embedded-app-driveitem-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /drives/{drive-id}/items/{item-id}/content
GET /groups/{group-id}/drive/items/{item-id}/content
GET /me/drive/root:/{item-path}:/content
GET /me/drive/items/{item-id}/content
GET /shares/{shareIdOrEncodedSharingUrl}/driveItem/content
GET /sites/{siteId}/drive/items/{item-id}/content
GET /users/{userId}/drive/items/{item-id}/content
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| if-none-match | String . If this request header is included and the eTag (or cTag) provided matches the current tag on the file, an `HTTP 304 Not Modified` response is returned. |

## Example

Here's an example to download a complete file.

### Request

# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "download-item-content", "scopes": "files.read" } -->

```msgraph-interactive
GET /me/drive/items/{item-id}/content
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

Returns a `302 Found` response redirecting to a preauthenticated download URL for the file, which is the same URL available through the `@microsoft.graph.downloadUrl` property on the DriveItem.

To download the contents of the file your application needs to follow the `Location` header in the response.
Many HTTP client libraries will automatically follow the 302 redirection and start downloading the file immediately.

Preauthenticated download URLs are only valid for a short period of time (a few minutes) and don't require an `Authorization` header to download.

<!-- { "blockType": "response" } -->

```http
HTTP/1.1 302 Found
Location: https://b0mpua-by3301.files.1drv.com/y23vmagahszhxzlcvhasdhasghasodfi
```

## Downloading files in JavaScript apps
To download files in a JavaScript app, you can't use the `/content` API, because this responds with a `302` redirect.
A `302` redirect is explicitly prohibited when a [Cross-Origin Resource Sharing (CORS)](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) _preflight_ is required, such as when providing the **Authorization** header.

Instead, your app needs to select the `@microsoft.graph.downloadUrl` property, which returns the same URL that `/content` directs to.
This URL can then be requested directly using XMLHttpRequest.
Because these URLs are preauthenticated, they can be retrieved without a CORS preflight request.

### Example

To retrieve the download URL for a file, first make a request that includes the `@microsoft.graph.downloadUrl` property:

```http
GET /drive/items/{item-ID}?select=id,@microsoft.graph.downloadUrl
```

The call returns the ID and download URL for a file:

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "12319191!11919",
  "@microsoft.graph.downloadUrl": "https://..."
}
```

You can then make an XMLHttpRequest for the URL provided in `@microsoft.graph.downloadUrl` to retrieve the file.

## Partial range downloads

To download a partial range of bytes from the file, your app can use the `Range` header as specified in [RFC 2616](https://www.ietf.org/rfc/rfc2616.txt). 
You must append the `Range` header to the actual `@microsoft.graph.downloadUrl` URL and not to the request for `/content`.

<!-- { "blockType": "request", "opaqueUrl": true, "name": "download-item-partial", "scopes": "files.read" } -->

```http
GET https://b0mpua-by3301.files.1drv.com/y23vmag
Range: bytes=0-1023
```

The call returns an `HTTP 206 Partial Content` response with the request range of bytes from the file.
If the range can't be generated the Range header may be ignored and an `HTTP 200` response would be returned with the full contents of the file.

<!-- { "blockType": "response", "name": "download-item-partial", "@odata.type": "stream" } -->

```http
HTTP/1.1 206 Partial Content
Content-Range: bytes 0-1023/2048
Content-Type: application/octet-stream

<first 1024 bytes of file>
```

### Error responses

See [Error Responses][error-response] for more info about
how errors are returned.

[error-response]: /graph/errors

<!-- {
  "type": "#page.annotation",
  "description": "Download the contents of a DriveItem.",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Items/Download",
  "suppressions": [
  ]
} -->

