---
title: "deviceManagementComplexSettingInstance resource type"
description: "A setting instance representing a complex value"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceManagementComplexSettingInstance resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A setting instance representing a complex value


Inherits from [deviceManagementSettingInstance](../resources/intune-deviceintent-devicemanagementsettinginstance.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceManagementComplexSettingInstances](../api/intune-deviceintent-devicemanagementcomplexsettinginstance-list.md)|[deviceManagementComplexSettingInstance](../resources/intune-deviceintent-devicemanagementcomplexsettinginstance.md) collection|List properties and relationships of the [deviceManagementComplexSettingInstance](../resources/intune-deviceintent-devicemanagementcomplexsettinginstance.md) objects.|
|[Get deviceManagementComplexSettingInstance](../api/intune-deviceintent-devicemanagementcomplexsettinginstance-get.md)|[deviceManagementComplexSettingInstance](../resources/intune-deviceintent-devicemanagementcomplexsettinginstance.md)|Read properties and relationships of the [deviceManagementComplexSettingInstance](../resources/intune-deviceintent-devicemanagementcomplexsettinginstance.md) object.|
|[Create deviceManagementComplexSettingInstance](../api/intune-deviceintent-devicemanagementcomplexsettinginstance-create.md)|[deviceManagementComplexSettingInstance](../resources/intune-deviceintent-devicemanagementcomplexsettinginstance.md)|Create a new [deviceManagementComplexSettingInstance](../resources/intune-deviceintent-devicemanagementcomplexsettinginstance.md) object.|
|[Delete deviceManagementComplexSettingInstance](../api/intune-deviceintent-devicemanagementcomplexsettinginstance-delete.md)|None|Deletes a [deviceManagementComplexSettingInstance](../resources/intune-deviceintent-devicemanagementcomplexsettinginstance.md).|
|[Update deviceManagementComplexSettingInstance](../api/intune-deviceintent-devicemanagementcomplexsettinginstance-update.md)|[deviceManagementComplexSettingInstance](../resources/intune-deviceintent-devicemanagementcomplexsettinginstance.md)|Update the properties of a [deviceManagementComplexSettingInstance](../resources/intune-deviceintent-devicemanagementcomplexsettinginstance.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The setting instance ID Inherited from [deviceManagementSettingInstance](../resources/intune-deviceintent-devicemanagementsettinginstance.md)|
|definitionId|String|The ID of the setting definition for this instance Inherited from [deviceManagementSettingInstance](../resources/intune-deviceintent-devicemanagementsettinginstance.md)|
|valueJson|String|JSON representation of the value Inherited from [deviceManagementSettingInstance](../resources/intune-deviceintent-devicemanagementsettinginstance.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|value|[deviceManagementSettingInstance](../resources/intune-deviceintent-devicemanagementsettinginstance.md) collection|The values that make up the complex setting|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagementComplexSettingInstance"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementComplexSettingInstance",
  "id": "String (identifier)",
  "definitionId": "String",
  "valueJson": "String"
}
```