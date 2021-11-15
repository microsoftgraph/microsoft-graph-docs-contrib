---
title: "teamworkDevice: updateSoftware"
description: "Software Update for the specified device. "
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "teamwork"
doc_type: apiPageType
---

# teamworkDevice: updateSoftware
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the software for a [teamworkDevice](../resources/teamworkDevice.md).
You can specify which software of the device to update:

- **softwareType** - AdminAgent | OperatingSystem | TeamsClient | Firmware | PartnerAgent | CompanyPortal

Get the logs for a specified device.
Run Diagnostics is a long-running operation.
After the POST diagnostics returns, you need to GET the [teamworkDeviceOperation](../resources/teamworkDeviceOperation.md) 
returned by the Location: header to see if it's "running" or "succeeded" or "failed".

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
POST /teamwork/devices/{teamworkDeviceId}/updateSoftware
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|softwareType|teamworkSoftwareType|SoftwareType to update. Valid types are "adminAgent, operatingSystem, teamsClient, firmware, partnerAgent, companyPortal".|
|softwareVersion|String|Specifies the version of the software available for update.|



## Response

If successful, this method returns a `202 Accepted` response code. The response will also contain a `Location` header, which contains the location of the [teamworkDeviceOperation](../resources/teamworkDeviceOperation.md) resource. Check the status of the restart operation by making a GET request to this location.

This method also returns a `409 Conflict` response code, if the operation is already in queued state.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "teamworkdevice_updatesoftware"
}
-->
``` http
POST https://graph.microsoft.com/beta/teamwork/devices/{teamworkDeviceId}/updateSoftware
Content-Type: application/json
Content-length: 64

{
  "softwareType": "teamsClient",
  "softwareVersion": "1.0.96.22"
}
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

