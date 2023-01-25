---
title: "hardwareConfigurationUserState resource type"
description: "Contains properties for User state of the hardware configuration"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# hardwareConfigurationUserState resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties for User state of the hardware configuration

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List hardwareConfigurationUserStates](../api/intune-deviceconfig-hardwareconfigurationuserstate-list.md)|[hardwareConfigurationUserState](../resources/intune-deviceconfig-hardwareconfigurationuserstate.md) collection|List properties and relationships of the [hardwareConfigurationUserState](../resources/intune-deviceconfig-hardwareconfigurationuserstate.md) objects.|
|[Get hardwareConfigurationUserState](../api/intune-deviceconfig-hardwareconfigurationuserstate-get.md)|[hardwareConfigurationUserState](../resources/intune-deviceconfig-hardwareconfigurationuserstate.md)|Read properties and relationships of the [hardwareConfigurationUserState](../resources/intune-deviceconfig-hardwareconfigurationuserstate.md) object.|
|[Create hardwareConfigurationUserState](../api/intune-deviceconfig-hardwareconfigurationuserstate-create.md)|[hardwareConfigurationUserState](../resources/intune-deviceconfig-hardwareconfigurationuserstate.md)|Create a new [hardwareConfigurationUserState](../resources/intune-deviceconfig-hardwareconfigurationuserstate.md) object.|
|[Delete hardwareConfigurationUserState](../api/intune-deviceconfig-hardwareconfigurationuserstate-delete.md)|None|Deletes a [hardwareConfigurationUserState](../resources/intune-deviceconfig-hardwareconfigurationuserstate.md).|
|[Update hardwareConfigurationUserState](../api/intune-deviceconfig-hardwareconfigurationuserstate-update.md)|[hardwareConfigurationUserState](../resources/intune-deviceconfig-hardwareconfigurationuserstate.md)|Update the properties of a [hardwareConfigurationUserState](../resources/intune-deviceconfig-hardwareconfigurationuserstate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the hardware configuration script user state entity. This property is read-only.|
|upn|String|User Principal Name (UPN).|
|userEmail|String|User Email address.|
|userName|String|User name|
|lastStateUpdateDateTime|DateTimeOffset|Last timestamp when the hardware configuration executed|
|successfulDeviceCount|Int32|Success device count for specific user.|
|failedDeviceCount|Int32|Failed device count for specific user.|
|pendingDeviceCount|Int32|Pending device count for specific user.|
|errorDeviceCount|Int32|Error device count for specific user.|
|notApplicableDeviceCount|Int32|Not applicable device count for specific user.|
|unknownDeviceCount|Int32|Unknown device count for specific user.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.hardwareConfigurationUserState"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.hardwareConfigurationUserState",
  "id": "String (identifier)",
  "upn": "String",
  "userEmail": "String",
  "userName": "String",
  "lastStateUpdateDateTime": "String (timestamp)",
  "successfulDeviceCount": 1024,
  "failedDeviceCount": 1024,
  "pendingDeviceCount": 1024,
  "errorDeviceCount": 1024,
  "notApplicableDeviceCount": 1024,
  "unknownDeviceCount": 1024
}
```
