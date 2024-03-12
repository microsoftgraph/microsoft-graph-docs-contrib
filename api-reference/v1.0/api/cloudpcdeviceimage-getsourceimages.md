---
title: "cloudPcDeviceImage: getSourceImages"
description: "Get cloudPcSourceDeviceImage objects that can be uploaded and used on Cloud PCs."
author: "ChyouChyou"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# cloudPcDeviceImage: getSourceImages

Namespace: microsoft.graph

Get [cloudPcSourceDeviceImage](../resources/cloudpcsourcedeviceimage.md) objects that can be uploaded and used on Cloud PCs. View a list of all the managed image resources from your Microsoft Entra subscriptions.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcdeviceimage_getsourceimages" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcdeviceimage-getsourceimages-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /deviceManagement/virtualEndpoint/deviceImages/getSourceImages
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [cloudPcSourceDeviceImage](../resources/cloudpcsourcedeviceimage.md) objects in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "cloudpcdeviceimage_getsourceimages"
}
-->

``` http
GET https://graph.microsoft.com/v1.0/deviceManagement/virtualEndpoint/deviceImages/getSourceImages
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.cloudPcSourceDeviceImage)"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.cloudPcSourceDeviceImage)",
  "value": [
    {
      "resourceId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/Example/providers/Microsoft.Compute/images/exampleImageForDev",
      "displayName": "exampleImageForDev",
      "subscriptionId": "0ac520ee-14c0-480f-b6c9-0a90c585ffff",
      "subscriptionDisplayName": "Reserved for IT"
    }
  ]
}
```
