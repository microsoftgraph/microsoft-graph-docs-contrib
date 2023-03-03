---
title: "hardwareConfiguration resource type"
description: "Intune will provide customer the ability to configure hardware/bios settings on the enrolled windows 10 Azure Active Directory joined devices."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# hardwareConfiguration resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Intune will provide customer the ability to configure hardware/bios settings on the enrolled windows 10 Azure Active Directory joined devices.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List hardwareConfigurations](../api/intune-deviceconfig-hardwareconfiguration-list.md)|[hardwareConfiguration](../resources/intune-deviceconfig-hardwareconfiguration.md) collection|List properties and relationships of the [hardwareConfiguration](../resources/intune-deviceconfig-hardwareconfiguration.md) objects.|
|[Get hardwareConfiguration](../api/intune-deviceconfig-hardwareconfiguration-get.md)|[hardwareConfiguration](../resources/intune-deviceconfig-hardwareconfiguration.md)|Read properties and relationships of the [hardwareConfiguration](../resources/intune-deviceconfig-hardwareconfiguration.md) object.|
|[Create hardwareConfiguration](../api/intune-deviceconfig-hardwareconfiguration-create.md)|[hardwareConfiguration](../resources/intune-deviceconfig-hardwareconfiguration.md)|Create a new [hardwareConfiguration](../resources/intune-deviceconfig-hardwareconfiguration.md) object.|
|[Delete hardwareConfiguration](../api/intune-deviceconfig-hardwareconfiguration-delete.md)|None|Deletes a [hardwareConfiguration](../resources/intune-deviceconfig-hardwareconfiguration.md).|
|[Update hardwareConfiguration](../api/intune-deviceconfig-hardwareconfiguration-update.md)|[hardwareConfiguration](../resources/intune-deviceconfig-hardwareconfiguration.md)|Update the properties of a [hardwareConfiguration](../resources/intune-deviceconfig-hardwareconfiguration.md) object.|
|[assignHardwareConfiguration action](../api/intune-deviceconfig-hardwareconfiguration-assignhardwareconfiguration.md)|[hardwareConfigurationAssignment](../resources/intune-deviceconfig-hardwareconfigurationassignment.md) collection|Not yet documented|
|[assign action](../api/intune-deviceconfig-hardwareconfiguration-assign.md)|[hardwareConfigurationAssignment](../resources/intune-deviceconfig-hardwareconfigurationassignment.md) collection|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier for the hardware configuration|
|version|Int32|Version of the hardware configuration (E.g. 1, 2, 3 ...)|
|displayName|String|Name of the hardware configuration|
|description|String|Description of the hardware configuration|
|createdDateTime|DateTimeOffset|Timestamp of when the hardware configuration was created. This property is read-only.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of when the hardware configuration was modified. This property is read-only.|
|fileName|String|File name of the hardware configuration|
|configurationFileContent|Binary|File content of the hardware configuration|
|hardwareConfigurationFormat|[hardwareConfigurationFormat](../resources/intune-deviceconfig-hardwareconfigurationformat.md)|Oem type of the hardware configuration (E.g. DELL, HP, Surface and SurfaceDock). Possible values are: `dell`, `surface`, `surfaceDock`.|
|roleScopeTagIds|String collection|List of Scope Tag IDs for the hardware configuration|
|perDevicePasswordDisabled|Boolean|A value indicating whether per devcive pasword disabled|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[hardwareConfigurationAssignment](../resources/intune-deviceconfig-hardwareconfigurationassignment.md) collection|List of the Azure AD user group ids that hardware configuration will be applied to. Only security groups and Office 365 Groups are supported.|
|runSummary|[hardwareConfigurationRunSummary](../resources/intune-deviceconfig-hardwareconfigurationrunsummary.md)|A summary of the results from an attempt to configure hardware settings|
|deviceRunStates|[hardwareConfigurationDeviceState](../resources/intune-deviceconfig-hardwareconfigurationdevicestate.md) collection|List of run states for the hardware configuration across all devices|
|userRunStates|[hardwareConfigurationUserState](../resources/intune-deviceconfig-hardwareconfigurationuserstate.md) collection|List of run states for the hardware configuration across all users|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.hardwareConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.hardwareConfiguration",
  "id": "String (identifier)",
  "version": 1024,
  "displayName": "String",
  "description": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "fileName": "String",
  "configurationFileContent": "binary",
  "hardwareConfigurationFormat": "String",
  "roleScopeTagIds": [
    "String"
  ],
  "perDevicePasswordDisabled": true
}
```
