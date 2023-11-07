---
title: "reports: getDeviceUsageSummary"
description: "Device Usage Summary report is a summary of counts around the area of the onboarding and offboarding of the organization devices to the Global Secure Access client."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: global-secure-access
doc_type: apiPageType
---

# reports: getDeviceUsageSummary
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Device Usage Summary report is a summary of counts around the area of the onboarding and offboarding of the organization devices to the Global Secure Access client.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_reports_getdeviceusagesummary" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-reports-getdeviceusagesummary-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /networkAccess/reports/getDeviceUsageSummary(startDateTime={startDateTime},endDateTime={endDateTime},activityPivotDateTime={activityPivotDateTime})
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
Don't supply a request body for this method.

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
  "value": [
    {
      "totalDeviceCount": 545,
      "activeDeviceCount": 540,
      "inactiveDeviceCount": 7
    }
  ]
}
```

