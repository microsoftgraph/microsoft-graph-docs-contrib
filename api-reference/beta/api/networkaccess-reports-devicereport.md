---
title: "reports: deviceReport"
description: "Provide a report of all devices with network traffic that the Global Secure Access services captured."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: global-secure-access
doc_type: apiPageType
---

# reports: deviceReport
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provide a report of all devices with network traffic that the Global Secure Access services captured.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_reports_devicereport" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-reports-devicereport-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /networkAccessRoot/reports/deviceReport(startDateTime={startDateTime}, endDateTime={endDateTime})
```

## Function parameters
In the request URL, provide the following query parameters with values.
The following table shows the parameters that can be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
|startDateTime|DateTimeOffset|The time and date of the beginning of the report period.|
|endDateTime|DateTimeOffset|The time and date of the end of the report period.|

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [microsoft.graph.networkaccess.device](../resources/networkaccess-device.md) collection in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "reportsthis.devicereport"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkaccess/reports/deviceReport(startDateTime=2023-08-20T12:12:59.076Z, endDateTime=2023-08-21T12:12:59.076Z) 
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/reportsthisdevicereport-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.networkaccess.device)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.networkaccess.device)",
  "value":[
     {
        "displayName":"john's device",
        "deviceId":"253ba0d4-b3b0-4825-8cd8-0f5338fade6a",
        "operatingSystem":"Windows 11 Pro",
        "isCompliant":true,
        "trafficType":"microsoft365",
        "lastAccessDateTime":"2023-08-09T13:20:04Z"
     },
     {
        "displayName":"john's device",
        "deviceId":"253ba0d4-b3b0-4825-8cd8-0f5338fade6a",
        "operatingSystem":"Windows 11 Pro",
        "isCompliant":true,
        "trafficType":"private",
        "lastAccessDateTime":"2023-08-09T13:20:04Z"
     }
  ]
}
```

