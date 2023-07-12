---
title: "reports: getDeviceUsageSummary"
description: "Device Usage Summary report is a summary of counts around the area of the onboarding and offboarding of the organization devices to the Global Secure Access client."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# reports: getDeviceUsageSummary
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Device Usage Summary report is a summary of counts around the area of the onboarding and offboarding of the organization devices to the Global Secure Access client.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|NetworkAccessPolicy.Read.All, NetworkAccessPolicy.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /networkAccess/reports/getDeviceUsageSummary
```

## Function parameters
In the request URL, provide the following query parameters with values.
The following table shows the parameters that can be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
|startDateTime|DateTimeOffset|Sets the starting date and time.|
|endDateTime|DateTimeOffset|Sets the ending date and time.|
|activityPivotDateTime|DateTimeOffset|The time that defines what is an active or inactive device.|


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [deviceUsageSummary](../resources/networkaccess-deviceusagesummary.md) in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "reportsthis.getdeviceusagesummary"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkAccess/reports/getDeviceUsageSummary (startDateTime=2023-01-29T00:00:00Z,endDateTime=2023-01-31T00:00:00Z, activityPivotDateTime=2023-01-30T00:00:00Z)
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.deviceUsageSummary"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "totalDeviceCount": 545,
      "activeDeviceCount": 540,
      "inactiveDeviceCount": 7
    }
  ]
}
```

