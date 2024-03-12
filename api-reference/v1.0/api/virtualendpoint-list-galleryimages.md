---
title: "List galleryImages"
description: "List the properties and relationships of gallery images of the organization."
author: "ChyouChyou"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
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
| Authorization | Bearer {token}. Required. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [cloudPcGalleryImage](../resources/cloudpcgalleryimage.md) objects in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "list_cloudpcgalleryimage"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/deviceManagement/virtualEndpoint/galleryImages
```

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
      "expiredDate": "2022-11-10"
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
      "expiredDate": "2022-06-14"
    }
  ]
}
```
