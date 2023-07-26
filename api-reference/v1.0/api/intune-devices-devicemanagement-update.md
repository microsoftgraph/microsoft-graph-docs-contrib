---
title: "Update deviceManagement"
description: "Update the properties of a deviceManagement object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Update deviceManagement

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [deviceManagement](../resources/intune-devices-devicemanagement.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementManagedDevices.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementManagedDevices.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /deviceManagement
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [deviceManagement](../resources/intune-devices-devicemanagement.md) object.

The following table shows the properties that are required when you create the [deviceManagement](../resources/intune-devices-devicemanagement.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier for the device|
|subscriptionState|[deviceManagementSubscriptionState](../resources/intune-devices-devicemanagementsubscriptionstate.md)|Tenant mobile device management subscription state. Possible values are: `pending`, `active`, `warning`, `disabled`, `deleted`, `blocked`, `lockedOut`.|
|deviceProtectionOverview|[deviceProtectionOverview](../resources/intune-devices-deviceprotectionoverview.md)|Device protection overview.|
|windowsMalwareOverview|[windowsMalwareOverview](../resources/intune-devices-windowsmalwareoverview.md)|Malware overview for windows devices.|
|userExperienceAnalyticsSettings|[userExperienceAnalyticsSettings](../resources/intune-devices-userexperienceanalyticssettings.md)|User experience analytics device settings|



## Response
If successful, this method returns a `200 OK` response code and an updated [deviceManagement](../resources/intune-devices-devicemanagement.md) object in the response body.

## Example

### Request
Here is an example of the request.

# [HTTP](#tab/http)
<!-- { "blockType": "request" , "name" : "intune_devices_devicemanagement_update_update_devicemanagement" }-->
``` http
PATCH https://graph.microsoft.com/v1.0/deviceManagement
Content-type: application/json
Content-length: 2632

{
  "@odata.type": "#microsoft.graph.deviceManagement",
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
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/intune-devices-devicemanagement-update-update-devicemanagement-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/intune-devices-devicemanagement-update-update-devicemanagement-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/intune-devices-devicemanagement-update-update-devicemanagement-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/intune-devices-devicemanagement-update-update-devicemanagement-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

<!-- { "blockType": "response" , "@odata.type" : "microsoft.graph.deviceManagement" }-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 2681

{
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
```
