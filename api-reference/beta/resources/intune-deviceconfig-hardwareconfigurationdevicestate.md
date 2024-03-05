---
title: "hardwareConfigurationDeviceState resource type"
description: "Contains properties for device run state of the hardware configuration"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# hardwareConfigurationDeviceState resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties for device run state of the hardware configuration

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List hardwareConfigurationDeviceStates](../api/intune-deviceconfig-hardwareconfigurationdevicestate-list.md)|[hardwareConfigurationDeviceState](../resources/intune-deviceconfig-hardwareconfigurationdevicestate.md) collection|List properties and relationships of the [hardwareConfigurationDeviceState](../resources/intune-deviceconfig-hardwareconfigurationdevicestate.md) objects.|
|[Get hardwareConfigurationDeviceState](../api/intune-deviceconfig-hardwareconfigurationdevicestate-get.md)|[hardwareConfigurationDeviceState](../resources/intune-deviceconfig-hardwareconfigurationdevicestate.md)|Read properties and relationships of the [hardwareConfigurationDeviceState](../resources/intune-deviceconfig-hardwareconfigurationdevicestate.md) object.|
|[Create hardwareConfigurationDeviceState](../api/intune-deviceconfig-hardwareconfigurationdevicestate-create.md)|[hardwareConfigurationDeviceState](../resources/intune-deviceconfig-hardwareconfigurationdevicestate.md)|Create a new [hardwareConfigurationDeviceState](../resources/intune-deviceconfig-hardwareconfigurationdevicestate.md) object.|
|[Delete hardwareConfigurationDeviceState](../api/intune-deviceconfig-hardwareconfigurationdevicestate-delete.md)|None|Deletes a [hardwareConfigurationDeviceState](../resources/intune-deviceconfig-hardwareconfigurationdevicestate.md).|
|[Update hardwareConfigurationDeviceState](../api/intune-deviceconfig-hardwareconfigurationdevicestate-update.md)|[hardwareConfigurationDeviceState](../resources/intune-deviceconfig-hardwareconfigurationdevicestate.md)|Update the properties of a [hardwareConfigurationDeviceState](../resources/intune-deviceconfig-hardwareconfigurationdevicestate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the hardware configuration script device state entity. This property is read-only.|
|deviceName|String|The name of the device|
|osVersion|String|Operating system version of the device (E.g. 10.0.19042.1165, 10.0.19042.1288 etc.)|
|upn|String|User Principal Name (UPN).|
|internalVersion|Int32|The Policy internal version|
|lastStateUpdateDateTime|DateTimeOffset|The last timestamp of when the hardware configuration executed|
|configurationState|[runState](../resources/intune-shared-runstate.md)|Configuration state from the lastest hardware configuration execution. Possible values are: `unknown`, `success`, `fail`, `scriptError`, `pending`, `notApplicable`.|
|configurationOutput|String|Output of the hardware configuration execution|
|configurationError|String|Error from the hardware configuration execution|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.hardwareConfigurationDeviceState"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.hardwareConfigurationDeviceState",
  "id": "String (identifier)",
  "deviceName": "String",
  "osVersion": "String",
  "upn": "String",
  "internalVersion": 1024,
  "lastStateUpdateDateTime": "String (timestamp)",
  "configurationState": "String",
  "configurationOutput": "String",
  "configurationError": "String"
}
```
