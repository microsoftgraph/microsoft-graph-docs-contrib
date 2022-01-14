---
title: "teamworkDevice: runDiagnostics"
description: "Run and generate diagnostic logs for the specified device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "teamwork"
doc_type: apiPageType
---

# teamworkDevice: runDiagnostics
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Run and generate diagnostic logs for the specified [teamworkDevice](../resources/teamworkdevice.md). This API triggers a long-running operation used to generate logs for a device.

>**Note:** Licensing or payment requirements may apply for this API when made available for production use.

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
POST /teamwork/devices/{teamworkDeviceId}/runDiagnostics
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `202 Accepted` response code. The response will also contain a `Location` header, which contains the location of the [teamworkDeviceOperation](../resources/teamworkdeviceoperation.md) resource. You can check the status of the run diagnostics operation by making a GET request to this location that returns whether the operation is `queued`, `succeeded`, or `failed`. If the operation succeeded, you can download the logs from the Microsoft Teams admin center.

This method also returns a `409 Conflict` response code if the operation is already in queued state.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "teamworkdevice_rundiagnostics"
}
-->
``` http
POST https://graph.microsoft.com/beta/teamwork/devices/0f3ce432-e432-0f3c-32e4-3c0f32e43c0f/runDiagnostics
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
Location: /teamwork/devices/0f3ce432-e432-0f3c-32e4-3c0f32e43c0f/operations/119eb06d-0c4b-4fb3-a754-33dd0d6b618c
Content-Type: text/plain
Content-Length: 0
```

