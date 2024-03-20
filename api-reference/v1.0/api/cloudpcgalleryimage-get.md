---
title: "Get cloudPcGalleryImage"
description: "Read the properties and relationships of a specific cloudPcGalleryImage object."
author: "ChyouChyou"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# Get cloudPcGalleryImage

Namespace: microsoft.graph

Read the properties and relationships of a specific [cloudPcGalleryImage](../resources/cloudpcgalleryimage.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcgalleryimage_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcgalleryimage-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /deviceManagement/virtualEndpoint/galleryImages/{id}
```

## Optional query parameters

This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [cloudPcGalleryImage](../resources/cloudpcgalleryimage.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_cloudpcgalleryimage",
  "sampleKeys": ["MicrosoftWindowsDesktop_windows-ent-cpc_19h2-ent-cpc-os"]
}
-->

``` http
GET https://graph.microsoft.com/v1.0/deviceManagement/virtualEndpoint/galleryImages/MicrosoftWindowsDesktop_windows-ent-cpc_19h2-ent-cpc-os
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcGalleryImage"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#cloudPcGalleryImage",
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
}
```
