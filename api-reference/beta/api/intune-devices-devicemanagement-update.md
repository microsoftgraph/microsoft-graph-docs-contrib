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

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [deviceManagement](../resources/intune-devices-devicemanagement.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementManagedDevices.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementManagedDevices.ReadWrite.All|

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
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [deviceManagement](../resources/intune-devices-devicemanagement.md) object.

The following table shows the properties that are required when you create the [deviceManagement](../resources/intune-devices-devicemanagement.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier for the device|
|subscriptionState|[deviceManagementSubscriptionState](../resources/intune-devices-devicemanagementsubscriptionstate.md)|Tenant mobile device management subscription state. Possible values are: `pending`, `active`, `warning`, `disabled`, `deleted`, `blocked`, `lockedOut`.|
|subscriptions|[deviceManagementSubscriptions](../resources/intune-devices-devicemanagementsubscriptions.md)|Tenant's Subscription. Possible values are: `none`, `intune`, `office365`, `intunePremium`, `intune_EDU`, `intune_SMB`.|
|managedDeviceCleanupSettings|[managedDeviceCleanupSettings](../resources/intune-devices-manageddevicecleanupsettings.md)|Device cleanup rule|
|adminConsent|[adminConsent](../resources/intune-devices-adminconsent.md)|Admin consent information.|
|deviceProtectionOverview|[deviceProtectionOverview](../resources/intune-devices-deviceprotectionoverview.md)|Device protection overview.|
|windowsMalwareOverview|[windowsMalwareOverview](../resources/intune-devices-windowsmalwareoverview.md)|Malware overview for windows devices.|
|accountMoveCompletionDateTime|DateTimeOffset|The date & time when tenant data moved between scaleunits.|
|userExperienceAnalyticsSettings|[userExperienceAnalyticsSettings](../resources/intune-devices-userexperienceanalyticssettings.md)|User experience analytics device settings|
|dataProcessorServiceForWindowsFeaturesOnboarding|[dataProcessorServiceForWindowsFeaturesOnboarding](../resources/intune-devices-dataprocessorserviceforwindowsfeaturesonboarding.md)|A configuration entity for MEM features that utilize Data Processor Service for Windows (DPSW) data.|
|userExperienceAnalyticsAnomalySeverityOverview|[userExperienceAnalyticsAnomalySeverityOverview](../resources/intune-devices-userexperienceanalyticsanomalyseverityoverview.md)|The user experience analytics anomaly severity overview entity contains the count information for each severity of anomaly.|



## Response
If successful, this method returns a `200 OK` response code and an updated [deviceManagement](../resources/intune-devices-devicemanagement.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement
Content-type: application/json
Content-length: 3833

{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "subscriptionState": "active",
  "subscriptions": "intune",
  "managedDeviceCleanupSettings": {
    "@odata.type": "microsoft.graph.managedDeviceCleanupSettings",
    "deviceInactivityBeforeRetirementInDays": "Device Inactivity Before Retirement In Days value"
  },
  "adminConsent": {
    "@odata.type": "microsoft.graph.adminConsent",
    "shareAPNSData": "granted",
    "shareUserExperienceAnalyticsData": "granted"
  },
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
  },
  "accountMoveCompletionDateTime": "2017-01-01T00:01:17.9006709-08:00",
  "userExperienceAnalyticsSettings": {
    "@odata.type": "microsoft.graph.userExperienceAnalyticsSettings",
    "configurationManagerDataConnectorConfigured": true
  },
  "dataProcessorServiceForWindowsFeaturesOnboarding": {
    "@odata.type": "microsoft.graph.dataProcessorServiceForWindowsFeaturesOnboarding",
    "hasValidWindowsLicense": true,
    "areDataProcessorServiceForWindowsFeaturesEnabled": true
  },
  "userExperienceAnalyticsAnomalySeverityOverview": {
    "@odata.type": "microsoft.graph.userExperienceAnalyticsAnomalySeverityOverview",
    "lowSeverityAnomalyCount": 7,
    "mediumSeverityAnomalyCount": 10,
    "highSeverityAnomalyCount": 8,
    "informationalSeverityAnomalyCount": 1
  }
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 3882

{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "id": "0b283420-3420-0b28-2034-280b2034280b",
  "subscriptionState": "active",
  "subscriptions": "intune",
  "managedDeviceCleanupSettings": {
    "@odata.type": "microsoft.graph.managedDeviceCleanupSettings",
    "deviceInactivityBeforeRetirementInDays": "Device Inactivity Before Retirement In Days value"
  },
  "adminConsent": {
    "@odata.type": "microsoft.graph.adminConsent",
    "shareAPNSData": "granted",
    "shareUserExperienceAnalyticsData": "granted"
  },
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
  },
  "accountMoveCompletionDateTime": "2017-01-01T00:01:17.9006709-08:00",
  "userExperienceAnalyticsSettings": {
    "@odata.type": "microsoft.graph.userExperienceAnalyticsSettings",
    "configurationManagerDataConnectorConfigured": true
  },
  "dataProcessorServiceForWindowsFeaturesOnboarding": {
    "@odata.type": "microsoft.graph.dataProcessorServiceForWindowsFeaturesOnboarding",
    "hasValidWindowsLicense": true,
    "areDataProcessorServiceForWindowsFeaturesEnabled": true
  },
  "userExperienceAnalyticsAnomalySeverityOverview": {
    "@odata.type": "microsoft.graph.userExperienceAnalyticsAnomalySeverityOverview",
    "lowSeverityAnomalyCount": 7,
    "mediumSeverityAnomalyCount": 10,
    "highSeverityAnomalyCount": 8,
    "informationalSeverityAnomalyCount": 1
  }
}
```
