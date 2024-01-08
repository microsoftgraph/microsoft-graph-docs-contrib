---
title: "deviceProtectionOverview resource type"
description: "Hardware information of a given device."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceProtectionOverview resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Hardware information of a given device.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|totalReportedDeviceCount|Int32|Total device count.|
|inactiveThreatAgentDeviceCount|Int32|Indicates number of devices with inactive threat agent|
|unknownStateThreatAgentDeviceCount|Int32|Indicates number of devices with threat agent state as unknown|
|pendingSignatureUpdateDeviceCount|Int32|Indicates number of devices with an old signature|
|cleanDeviceCount|Int32|Indicates number of devices reporting as clean|
|pendingFullScanDeviceCount|Int32|Indicates number of devices pending full scan|
|pendingRestartDeviceCount|Int32|Indicates number of devices pending restart|
|pendingManualStepsDeviceCount|Int32|Indicates number of devices with pending manual steps|
|pendingOfflineScanDeviceCount|Int32|Indicates number of pending offline scan devices|
|criticalFailuresDeviceCount|Int32|Indicates number of devices with critical failures|
|pendingQuickScanDeviceCount|Int32|Indicates the number of devices that have a pending full scan. Valid values -2147483648 to 2147483647|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceProtectionOverview"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceProtectionOverview",
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
}
```
