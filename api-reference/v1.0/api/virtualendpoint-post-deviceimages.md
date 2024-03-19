---
title: "Create cloudPcDeviceImage"
description: "Create a new cloudPcDeviceImage object."
author: "ChyouChyou"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# Create cloudPcDeviceImage

Namespace: microsoft.graph

Create a new [cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) object. Upload a custom OS image that you can later provision on Cloud PCs.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualendpoint_post_deviceimages" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualendpoint-post-deviceimages-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
POST /deviceManagement/virtualEndpoint/deviceImages
```

## Request headers

| Name          | Description                |
| :------------ | :------------------------  |
| Authorization | Bearer {token}. Required.  |
| Content-Type  | application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) object.

The following table lists the properties that are required when you create a [cloudPcDeviceImage](../resources/cloudpcdeviceimage.md).

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of this image.|
|sourceImageResourceId|String|The ID of the source image resource on Azure. The required ID format is: "/subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/images/{imageName}".|
|version|String|The image version. For example, `0.0.1` and `1.5.13`.|

## Response

If successful, this method returns a `201 Created` response code and a [cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "create_cloudpcdeviceimage_from_cloudpcdeviceimage"
}
-->

``` http
POST https://graph.microsoft.com/v1.0/deviceManagement/virtualEndpoint/deviceImages
Content-Type: application/json

{
  "displayName": "ImageForDev",
  "version": "0.0.1",
  "sourceImageResourceId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/Example/providers/Microsoft.Compute/images/exampleImage"
}
```

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcDeviceImage"
}
-->

``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#deviceManagement/virtualEndpoint/deviceImages/$entity",
  "id": "eda7ed64-7705-4079-9d08-c2bd883fffff",
  "displayName": "ImageForDev",
  "osBuildNumber": null,
  "operatingSystem": null,
  "version": "0.0.1",
  "sourceImageResourceId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/Example/providers/Microsoft.Compute/images/exampleImageForDev",
  "lastModifiedDateTime": "2023-11-03T07:03:44.97Z",
  "status": "pending",
  "errorCode": null,
  "osStatus": null,
  "expirationDate": null
}
```
