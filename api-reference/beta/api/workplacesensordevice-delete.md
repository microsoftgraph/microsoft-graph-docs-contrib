---
title: "Delete workplaceSensorDevice"
description: "Delete a workplace sensor device."
author: "ms-amakumar"
ms.localizationpriority: medium
ms.prod: "outlook"
doc_type: apiPageType
---

# Delete workplaceSensorDevice
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a workplace sensor device.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|PlaceDevice.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|PlaceDevice.ReadWrite.All|

For an app with delegated permissions to write workplace devices, the signed-in user must be a member of one of the following Microsoft Entra administrator roles: either Global Administrator or one of the Exchange Online management roles, specifically TenantPlacesManagement.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /workplace/sensorDevices/{id}
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
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_workplacesensordevice"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/workplace/sensorDevices/ade7078f-4bf5-4239-bfde-95a7c4225df7
```


### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

