---
title: "managedDevice: bulkRestoreCloudPc"
description: "Restore multiple Cloud PC devices with a single request that includes the IDs of Intune managed devices and a restore point date and time."
author: "rongting"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# managedDevice: bulkRestoreCloudPc
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Restore multiple Cloud PC devices with a single request that includes the IDs of Intune managed devices and a restore point date and time.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CloudPC.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|CloudPC.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/managedDevices/bulkRestoreCloudPc
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|managedDeviceIds|String collection|The IDs of the Cloud PC devices.|
|restorePointDateTime|DateTimeOffset|The UTC time point for the selected Cloud PC devices to restore to a previous state. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is '2014-01-01T00:00:00Z'.|
|timeRange|[restoreTimeRange](#restoretimerange-values)|The time range of the restore point. Possible values are: `before`, `after`, `beforeOrAfter`, `unknownFutureValue`.|

### restoreTimeRange values

|Member|Description|
|:---|:---|
|before|Choose the closest snapshot before the selected time point.|
|after|Choose the closest snapshot after the selected time point.|
|beforeOrAfter|Choose the closest snapshot around the selected time point.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|

## Response

If successful, this action returns a `200 OK` response code and a [cloudPcBulkRemoteActionResult](../resources/cloudpcbulkremoteactionresult.md) in the response body.

## Examples

### Request
The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "manageddevicethis.bulkrestorecloudpc"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/managedDevices/bulkRestoreCloudPc
Content-Type: application/json
Content-length: 123

{
  "managedDeviceIds": [
    "30d0e128-de93-41dc-89ec-33d84bb662a0",
    "7c82a3e3-9459-44e4-94d9-b92f93bf78dd"
  ],
  "restorePointDateTime": "2021-09-23T04:00:00.0000000",
  "timeRange": "before"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/manageddevicethisbulkrestorecloudpc-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/manageddevicethisbulkrestorecloudpc-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/manageddevicethisbulkrestorecloudpc-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/manageddevicethisbulkrestorecloudpc-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/manageddevicethisbulkrestorecloudpc-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/manageddevicethisbulkrestorecloudpc-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcBulkRemoteActionResult"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "microsoft.graph.cloudPcBulkRemoteActionResult",
    "successfulDeviceIds": [
        "30d0e128-de93-41dc-89ec-33d84bb662a0"
    ],
    "failedDeviceIds": [
        "7c82a3e3-9459-44e4-94d9-b92f93bf78dd"
    ],
    "notFoundDeviceIds": [
    ],
    "notSupportedDeviceIds": [
    ]
  }
}
```
