---
title: "Get deviceManagement"
description: "Read properties and relationships of the deviceManagement object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Get deviceManagement

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Read properties and relationships of the [deviceManagement](../resources/intune-devices-devicemanagement.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementManagedDevices.Read.All, DeviceManagementManagedDevices.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementManagedDevices.Read.All, DeviceManagementManagedDevices.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement
```

## Optional query parameters
This method supports the [OData Query Parameters](/graph/query-parameters) to help customize the response.

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and [deviceManagement](../resources/intune-devices-devicemanagement.md) object in the response body.

## Example

### Request
Here is an example of the request.

# [HTTP](#tab/http)
<!-- { "blockType": "request" , "name" : "intune_devices_devicemanagement_get_get_devicemanagement" }-->
``` http
GET https://graph.microsoft.com/v1.0/deviceManagement
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/intune-devices-devicemanagement-get-get-devicemanagement-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/intune-devices-devicemanagement-get-get-devicemanagement-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/intune-devices-devicemanagement-get-get-devicemanagement-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/intune-devices-devicemanagement-get-get-devicemanagement-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/intune-devices-devicemanagement-get-get-devicemanagement-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/intune-devices-devicemanagement-get-get-devicemanagement-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/intune-devices-devicemanagement-get-get-devicemanagement-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

<!-- { "blockType": "response" , "@odata.type" : "microsoft.graph.deviceManagement" }-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 2854

{
  "value": {
    "@odata.type": "#microsoft.graph.deviceManagement",
    "id": "0b283420-3420-0b28-2034-280b2034280b",
    "subscriptionState": "active",
    "deviceProtectionOverview": {
      "@odata.type": "microsoft.graph.deviceProtectionOverview",
      "totalReportedDeviceCount": 8,
      "inactiveThreatAgentDeviceCount": 14,
      "unknownStateThreatAgentDeviceCount": 2,
      "pendingSignatureUpdateDeviceCount": 1,
      "cleanDeviceCount": 0,
      "pendingFullScanDeviceCount": 10,
      "pendingRestartDeviceCount": 9,
      "pendingManualStepsDeviceCount": 13,
      "pendingOfflineScanDeviceCount": 13,
      "criticalFailuresDeviceCount": 11,
      "pendingQuickScanDeviceCount": 11
    },
    "windowsMalwareOverview": {
      "@odata.type": "microsoft.graph.windowsMalwareOverview",
      "malwareDetectedDeviceCount": 10,
      "totalMalwareCount": 1,
      "totalDistinctMalwareCount": 9,
      "malwareStateSummary": [
        {
          "@odata.type": "microsoft.graph.windowsMalwareStateCount",
          "state": "actionFailed",
          "deviceCount": 11,
          "malwareDetectionCount": 5,
          "distinctMalwareCount": 4,
          "lastUpdateDateTime": "2016-12-31T23:58:21.6459442-08:00"
        }
      ],
      "malwareSeveritySummary": [
        {
          "@odata.type": "microsoft.graph.windowsMalwareSeverityCount",
          "severity": "low",
          "malwareDetectionCount": 5,
          "distinctMalwareCount": 4,
          "lastUpdateDateTime": "2016-12-31T23:58:21.6459442-08:00"
        }
      ],
      "malwareExecutionStateSummary": [
        {
          "@odata.type": "microsoft.graph.windowsMalwareExecutionStateCount",
          "executionState": "blocked",
          "deviceCount": 11,
          "lastUpdateDateTime": "2016-12-31T23:58:21.6459442-08:00"
        }
      ],
      "malwareCategorySummary": [
        {
          "@odata.type": "microsoft.graph.windowsMalwareCategoryCount",
          "category": "adware",
          "deviceCount": 11,
          "activeMalwareDetectionCount": 11,
          "distinctActiveMalwareCount": 10,
          "lastUpdateDateTime": "2016-12-31T23:58:21.6459442-08:00"
        }
      ],
      "malwareNameSummary": [
        {
          "@odata.type": "microsoft.graph.windowsMalwareNameCount",
          "malwareIdentifier": "Malware Identifier value",
          "name": "Name value",
          "deviceCount": 11,
          "lastUpdateDateTime": "2016-12-31T23:58:21.6459442-08:00"
        }
      ],
      "osVersionsSummary": [
        {
          "@odata.type": "microsoft.graph.osVersionCount",
          "osVersion": "Os Version value",
          "deviceCount": 11,
          "lastUpdateDateTime": "2016-12-31T23:58:21.6459442-08:00"
        }
      ]
    }
  }
}
```
