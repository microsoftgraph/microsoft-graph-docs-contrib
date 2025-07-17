---
title: "deviceHealthScriptDeviceState resource type"
description: "Contains properties for device run state of the device health script."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 09/11/2024
---

# deviceHealthScriptDeviceState resource type

Namespace: microsoft.graph
> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.


Contains properties for device run state of the device health script.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceHealthScriptDeviceStates](../api/intune-devices-devicehealthscriptdevicestate-list.md)|[deviceHealthScriptDeviceState](../resources/intune-devices-devicehealthscriptdevicestate.md) collection|List properties and relationships of the [deviceHealthScriptDeviceState](../resources/intune-devices-devicehealthscriptdevicestate.md) objects.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the device health script device state entity. This property is read-only.|
|detectionState|[runState](../resources/intune-shared-runstate.md)|Detection state from the lastest device health script execution. Possible values are: `unknown`, `success`, `fail`, `scriptError`, `pending`, `notApplicable`.|
|lastStateUpdateDateTime|DateTimeOffset|The last timestamp of when the device health script executed|
|expectedStateUpdateDateTime|DateTimeOffset|The next timestamp of when the device health script is expected to execute|
|lastSyncDateTime|DateTimeOffset|The last time that Intune Managment Extension synced with Intune|
|preRemediationDetectionScriptOutput|String|Output of the detection script before remediation|
|preRemediationDetectionScriptError|String|Error from the detection script before remediation|
|remediationScriptError|String|Error output of the remediation script|
|postRemediationDetectionScriptOutput|String|Detection script output after remediation|
|postRemediationDetectionScriptError|String|Error from the detection script after remediation|
|remediationState|[remediationState](../resources/intune-devices-remediationstate.md)|Remediation state from the lastest device health script execution. Possible values are: `unknown`, `skipped`, `success`, `remediationFailed`, `scriptError`, `unknownFutureValue`.|
|assignmentFilterIds|String collection|A list of the assignment filter ids used for health script applicability evaluation|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|managedDevice|[managedDevice](../resources/intune-devices-manageddevice.md)|The managed device on which the device health script executed|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceHealthScriptDeviceState"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceHealthScriptDeviceState",
  "id": "String (identifier)",
  "detectionState": "String",
  "lastStateUpdateDateTime": "String (timestamp)",
  "expectedStateUpdateDateTime": "String (timestamp)",
  "lastSyncDateTime": "String (timestamp)",
  "preRemediationDetectionScriptOutput": "String",
  "preRemediationDetectionScriptError": "String",
  "remediationScriptError": "String",
  "postRemediationDetectionScriptOutput": "String",
  "postRemediationDetectionScriptError": "String",
  "remediationState": "String",
  "assignmentFilterIds": [
    "String"
  ]
}
```
