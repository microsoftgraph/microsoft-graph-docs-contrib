---
title: "List deviceImages"
description: "List the properties and relationships of the cloudPcDeviceImage objects (operating system images) uploaded to Cloud PC."
author: "ChyouChyou"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# List deviceImages

Namespace: microsoft.graph

List the properties and relationships of the [cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) objects (operating system images) uploaded to Cloud PC.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /deviceManagement/virtualEndpoint/deviceImages
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

If successful, this method returns a `200 OK` response code and a collection of [cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) objects in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "list_cloudpcdeviceimages"
}
-->

``` http
GET https://graph.microsoft.com/v1.0/deviceManagement/virtualEndpoint/deviceImages
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.cloudPcDeviceImage)"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#deviceManagement/virtualEndpoint/deviceImages",
  "value": [
    {
      "id": "eda7ed64-7705-4079-9d08-c2bd883f4fff",
      "displayName": "ImageForDev",
      "expirationDate": "2024-06-11",
      "osBuildNumber": "21H2",
      "osStatus": "supported",
      "operatingSystem": "Windows 10 Enterprise",
      "version": "0.0.1",
      "sourceImageResourceId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/Example/providers/Microsoft.Compute/images/exampleImageForDev",
      "lastModifiedDateTime": "2023-11-03T07:03:44.97Z",
      "status": "ready",
      "errorCode": null
    }
  ]
}
```
