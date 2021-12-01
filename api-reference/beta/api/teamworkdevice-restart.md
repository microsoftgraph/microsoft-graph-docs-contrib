---
title: "teamworkDevice: restart"
description: "Restart the specified device. "
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "teamwork"
doc_type: apiPageType
---

# teamworkDevice: restart
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Restarting is an async operation. A device is restarted once the async operation completes successfully, which may occur subsequent to a response from this API.

>**Note:** API requirements under the `/beta` version are subject to change. Licensing or payment requirements may apply for this API when made available for production use.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|TeamworkDevice.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|TeamworkDevice.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /teamwork/devices/{teamworkDeviceId}/restart
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `202 Accepted` response code. The response will also contain a `Location` header, which contains the location of the [teamworkDeviceOperation](../resources/teamworkDeviceOperation.md) resource. Check the status of the restart operation by making a GET request to this location.

This method also returns a `409 Conflict` response code, if the operation is already in queued state.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "teamworkdevice_restart"
}
-->
``` http
POST https://graph.microsoft.com/beta/teamwork/devices/{teamworkDeviceId}/restart
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted
Location: /teamwork/devices({teamworkDeviceId})/operations({opId})
Content-Type: text/plain
Content-Length: 0
```

