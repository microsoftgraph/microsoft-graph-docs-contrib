---
title: "Delete cloudPcDeviceImage"
description: "Delete a cloudPcDeviceImage object."
author: "ChyouChyou"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# Delete cloudPcDeviceImage

Namespace: microsoft.graph

Delete a [cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
DELETE /deviceManagement/virtualEndpoint/deviceImages/{id}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_deviceimages_from_virtualendpoint"
}
-->

``` http
DELETE https://graph.microsoft.com/v1.0/deviceManagement/virtualEndpoint/deviceImages/{id}
```
---

### Response

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```