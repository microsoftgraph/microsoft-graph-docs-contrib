---
title: "deviceManagement resource type"
description: "Singleton entity that acts as a container for all device management functionality."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagement resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Singleton entity that acts as a container for all device management functionality.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagement](../api/intune-devices-devicemanagement-get.md)|[deviceManagement](../resources/intune-devices-devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune-devices-devicemanagement.md) object.|
|[Update deviceManagement](../api/intune-devices-devicemanagement-update.md)|[deviceManagement](../resources/intune-devices-devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune-devices-devicemanagement.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier for the device|
|subscriptionState|[deviceManagementSubscriptionState](../resources/intune-devices-devicemanagementsubscriptionstate.md)|Tenant mobile device management subscription state. Possible values are: `pending`, `active`, `warning`, `disabled`, `deleted`, `blocked`, `lockedOut`.|
|deviceProtectionOverview|[deviceProtectionOverview](../resources/intune-devices-deviceprotectionoverview.md)|Device protection overview.|
|windowsMalwareOverview|[windowsMalwareOverview](../resources/intune-devices-windowsmalwareoverview.md)|Malware overview for windows devices.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|applePushNotificationCertificate|[applePushNotificationCertificate](../resources/intune-devices-applepushnotificationcertificate.md)|Apple push notification certificate.|
|managedDeviceOverview|[managedDeviceOverview](../resources/intune-devices-manageddeviceoverview.md)|Device overview|
|detectedApps|[detectedApp](../resources/intune-devices-detectedapp.md) collection|The list of detected apps associated with a device.|
|managedDevices|[managedDevice](../resources/intune-devices-manageddevice.md) collection|The list of managed devices.|
|windowsMalwareInformation|[windowsMalwareInformation](../resources/intune-devices-windowsmalwareinformation.md) collection|The list of affected malware in the tenant.|
|mobileAppTroubleshootingEvents|[mobileAppTroubleshootingEvent](../resources/intune-devices-mobileapptroubleshootingevent.md) collection|The collection property of MobileAppTroubleshootingEvent.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagement"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "id": "String (identifier)",
  "subscriptionState": "String",
  "deviceProtectionOverview": {
    "@odata.type": "microsoft.graph.deviceProtectionOverview",
    "totalReportedDeviceCount": 1024,
    "inactiveThreatAgentDeviceCount": 1024,
    "unknownStateThreatAgentDeviceCount": 1024,
    "pendingSignatureUpdateDeviceCount": 1024,
    "cleanDeviceCount": 1024,
    "pendingFullScanDeviceCount": 1024,
    "pendingRestartDeviceCount": 1024,
    "pendingManualStepsDeviceCount": 1024,
    "pendingOfflineScanDeviceCount": 1024,
    "criticalFailuresDeviceCount": 1024,
    "pendingQuickScanDeviceCount": 1024
  },
  "windowsMalwareOverview": {
    "@odata.type": "microsoft.graph.windowsMalwareOverview",
    "malwareDetectedDeviceCount": 1024,
    "totalMalwareCount": 1024,
    "totalDistinctMalwareCount": 1024,
    "malwareStateSummary": [
      {
        "@odata.type": "microsoft.graph.windowsMalwareStateCount",
        "state": "String",
        "deviceCount": 1024,
        "malwareDetectionCount": 1024,
        "distinctMalwareCount": 1024,
        "lastUpdateDateTime": "String (timestamp)"
      }
    ],
    "malwareSeveritySummary": [
      {
        "@odata.type": "microsoft.graph.windowsMalwareSeverityCount",
        "severity": "String",
        "malwareDetectionCount": 1024,
        "distinctMalwareCount": 1024,
        "lastUpdateDateTime": "String (timestamp)"
      }
    ],
    "malwareExecutionStateSummary": [
      {
        "@odata.type": "microsoft.graph.windowsMalwareExecutionStateCount",
        "executionState": "String",
        "deviceCount": 1024,
        "lastUpdateDateTime": "String (timestamp)"
      }
    ],
    "malwareCategorySummary": [
      {
        "@odata.type": "microsoft.graph.windowsMalwareCategoryCount",
        "category": "String",
        "deviceCount": 1024,
        "activeMalwareDetectionCount": 1024,
        "distinctActiveMalwareCount": 1024,
        "lastUpdateDateTime": "String (timestamp)"
      }
    ],
    "malwareNameSummary": [
      {
        "@odata.type": "microsoft.graph.windowsMalwareNameCount",
        "malwareIdentifier": "String",
        "name": "String",
        "deviceCount": 1024,
        "lastUpdateDateTime": "String (timestamp)"
      }
    ],
    "osVersionsSummary": [
      {
        "@odata.type": "microsoft.graph.osVersionCount",
        "osVersion": "String",
        "deviceCount": 1024,
        "lastUpdateDateTime": "String (timestamp)"
      }
    ]
  }
}
```
