---
title: "List cloudPcGalleryImages"
description: "List the properties and relationships of gallery images of the organization."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# List galleryImages

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List the properties and relationships of the [cloudPcGalleryImage](../resources/cloudpcgalleryimage.md) objects.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CloudPC.Read.All, CloudPC.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|CloudPC.Read.All, CloudPC.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /deviceManagement/virtualEndpoint/galleryImages
```

## Optional query parameters

This method supports `$select` and `$filter` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [cloudPcGalleryImage](../resources/cloudpcgalleryimage.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_cloudpcgalleryimage"
}
-->
``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/galleryImages
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcGalleryImage",
  "isCollection": true
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#cloudPcGalleryImage",
    "value": [
        {
            "id":"MicrosoftWindowsDesktop_windows-ent-cpc_19h2-ent-cpc-os",
            "displayName":"Windows 10 Enterprise + OS Optimizations 1909",
            "offerDisplayName":"Windows 10 Enterprise + OS Optimizations",
            "skuDisplayName":"1909",
            "publisher":"MicrosoftWindowsDesktop",
            "offer":"windows-ent-cpc",
            "sku":"19h2-ent-cpc-os",
            "recommendedSku":"light",
            "status":"supported",
            "sizeInGB":64,
            "startDate":"2019-11-12",
            "endDate":"2022-05-10",
            "expiredDate":"2022-11-10"
        },
        {
            "id":"MicrosoftWindowsDesktop_windows-ent-cpc_20h1-ent-cpc-os",
            "displayName":"Windows 10 Enterprise + OS Optimizations 2004",
            "offerDisplayName":"Windows 10 Enterprise + OS Optimizations",
            "skuDisplayName":"2004",
            "publisher":"MicrosoftWindowsDesktop",
            "offer":"windows-ent-cpc",
            "sku":"20h1-ent-cpc-os",
            "recommendedSku":"light",
            "status":"supported",
            "sizeInGB":64,
            "startDate":"2020-05-27",
            "endDate":"2021-12-14",
            "expiredDate":"2022-06-14"
        }
   ]
}
```