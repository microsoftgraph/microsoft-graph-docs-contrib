---
title: "reports: getDeviceUsageSummary"
description: "Provide a summary on the onboarding and offboarding of the devices to the ZTNA client."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: global-secure-access
doc_type: apiPageType
---

# reports: getDeviceUsageSummary
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provide a summary on the onboarding and offboarding of the devices to the ZTNA client.

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
|startDateTime|DateTimeOffset|Timestamp indicating the starting date and time for summarizing data within the specified report, providing the beginning point for data aggregation and analysis.|
|endDateTime|DateTimeOffset|Timestamp indicating the ending date and time for summarizing data within the specified report, marking the conclusion of the data aggregation and analysis period.|
|activityPivotDateTime|DateTimeOffset|The time that defines what is an active or inactive device.|
|trafficType|String|Traffic classification. The possible values are: `microsoft365`, `private`,`internet`. Required.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [deviceUsageSummary](../resources/networkaccess-deviceusagesummary.md) in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "reportsthis.getdeviceusagesummary"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkAccess/reports/getDeviceUsageSummary (startDateTime=2023-01-29T00:00:00Z,endDateTime=2023-01-31T00:00:00Z, activityPivotDateTime=2023-01-30T00:00:00Z)
```


### Response
The following example shows the response.
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.networkaccess.deviceUsageSummary",
    "totalDeviceCount": 545,
    "activeDeviceCount": 540,
    "inactiveDeviceCount": 7
}
```

