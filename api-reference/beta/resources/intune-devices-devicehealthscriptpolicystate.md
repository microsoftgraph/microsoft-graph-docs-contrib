---
title: "deviceHealthScriptPolicyState resource type"
description: "Contains properties for policy run state of the device health script."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceHealthScriptPolicyState resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties for policy run state of the device health script.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceHealthScriptPolicyStates](../api/intune-devices-devicehealthscriptpolicystate-list.md)|[deviceHealthScriptPolicyState](../resources/intune-devices-devicehealthscriptpolicystate.md) collection|List properties and relationships of the [deviceHealthScriptPolicyState](../resources/intune-devices-devicehealthscriptpolicystate.md) objects.|
|[Get deviceHealthScriptPolicyState](../api/intune-devices-devicehealthscriptpolicystate-get.md)|[deviceHealthScriptPolicyState](../resources/intune-devices-devicehealthscriptpolicystate.md)|Read properties and relationships of the [deviceHealthScriptPolicyState](../resources/intune-devices-devicehealthscriptpolicystate.md) object.|
|[Create deviceHealthScriptPolicyState](../api/intune-devices-devicehealthscriptpolicystate-create.md)|[deviceHealthScriptPolicyState](../resources/intune-devices-devicehealthscriptpolicystate.md)|Create a new [deviceHealthScriptPolicyState](../resources/intune-devices-devicehealthscriptpolicystate.md) object.|
|[Delete deviceHealthScriptPolicyState](../api/intune-devices-devicehealthscriptpolicystate-delete.md)|None|Deletes a [deviceHealthScriptPolicyState](../resources/intune-devices-devicehealthscriptpolicystate.md).|
|[Update deviceHealthScriptPolicyState](../api/intune-devices-devicehealthscriptpolicystate-update.md)|[deviceHealthScriptPolicyState](../resources/intune-devices-devicehealthscriptpolicystate.md)|Update the properties of a [deviceHealthScriptPolicyState](../resources/intune-devices-devicehealthscriptpolicystate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the device health script policy state is a concatenation of the MT sideCar policy Id and Intune device Id|
|deviceId|String|The Intune device Id|
|policyId|String|The MT sideCar policy Id|
|deviceName|String|Display name of the device|
|policyName|String|Display name of the device health script|
|userName|String|Name of the user whom ran the device health script|
|osVersion|String|Value of the OS Version in string|
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
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceHealthScriptPolicyState"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceHealthScriptPolicyState",
  "id": "String (identifier)",
  "deviceId": "String",
  "policyId": "String",
  "deviceName": "String",
  "policyName": "String",
  "userName": "String",
  "osVersion": "String",
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
