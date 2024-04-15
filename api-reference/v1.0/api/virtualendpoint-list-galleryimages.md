---
title: "List galleryImages"
description: "List the properties and relationships of cloudPcGalleryImage objects."
author: "ChyouChyou"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# List galleryImages

Namespace: microsoft.graph

List the properties and relationships of [cloudPcGalleryImage](../resources/cloudpcgalleryimage.md) objects.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualendpoint_list_galleryimages" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualendpoint-list-galleryimages-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /deviceManagement/virtualEndpoint/galleryImages
```

## Optional query parameters

This method supports the `$select` and `$filter` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [cloudPcGalleryImage](../resources/cloudpcgalleryimage.md) objects in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_cloudpcgalleryimage"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/deviceManagement/virtualEndpoint/galleryImages
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-cloudpcgalleryimage-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-cloudpcgalleryimage-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-cloudpcgalleryimage-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-cloudpcgalleryimage-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-cloudpcgalleryimage-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-cloudpcgalleryimage-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-cloudpcgalleryimage-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-cloudpcgalleryimage-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.cloudPcGalleryImage)"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#deviceManagement/virtualEndpoint/galleryImages",
  "value": [
    {
      "id": "MicrosoftWindowsDesktop_windows-ent-cpc_19h2-ent-cpc-os",
      "displayName": "Windows 10 Enterprise + OS Optimizations 1909",
      "publisherName": "MicrosoftWindowsDesktop",
      "offerName": "windows-ent-cpc",
      "skuName": "19h2-ent-cpc-os",
      "status": "supported",
      "sizeInGB": 64,
      "startDate": "2019-11-12",
      "endDate": "2022-05-10",
      "expirationDate": "2022-11-10"
    },
    {
      "id": "MicrosoftWindowsDesktop_windows-ent-cpc_20h1-ent-cpc-os",
      "displayName": "Windows 10 Enterprise + OS Optimizations 2004",
      "publisherName": "MicrosoftWindowsDesktop",
      "offerName": "windows-ent-cpc",
      "skuName": "20h1-ent-cpc-os",
      "status": "supported",
      "sizeInGB": 64,
      "startDate": "2020-05-27",
      "endDate": "2021-12-14",
      "expirationDate": "2022-06-14"
    }
  ]
}
```
