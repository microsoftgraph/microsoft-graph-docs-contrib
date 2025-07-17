---
title: "deviceManagementAbstractComplexSettingInstance resource type"
description: "A setting instance representing a complex value for an abstract setting"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceManagementAbstractComplexSettingInstance resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A setting instance representing a complex value for an abstract setting


Inherits from [deviceManagementSettingInstance](../resources/intune-deviceintent-devicemanagementsettinginstance.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceManagementAbstractComplexSettingInstances](../api/intune-deviceintent-devicemanagementabstractcomplexsettinginstance-list.md)|[deviceManagementAbstractComplexSettingInstance](../resources/intune-deviceintent-devicemanagementabstractcomplexsettinginstance.md) collection|List properties and relationships of the [deviceManagementAbstractComplexSettingInstance](../resources/intune-deviceintent-devicemanagementabstractcomplexsettinginstance.md) objects.|
|[Get deviceManagementAbstractComplexSettingInstance](../api/intune-deviceintent-devicemanagementabstractcomplexsettinginstance-get.md)|[deviceManagementAbstractComplexSettingInstance](../resources/intune-deviceintent-devicemanagementabstractcomplexsettinginstance.md)|Read properties and relationships of the [deviceManagementAbstractComplexSettingInstance](../resources/intune-deviceintent-devicemanagementabstractcomplexsettinginstance.md) object.|
|[Create deviceManagementAbstractComplexSettingInstance](../api/intune-deviceintent-devicemanagementabstractcomplexsettinginstance-create.md)|[deviceManagementAbstractComplexSettingInstance](../resources/intune-deviceintent-devicemanagementabstractcomplexsettinginstance.md)|Create a new [deviceManagementAbstractComplexSettingInstance](../resources/intune-deviceintent-devicemanagementabstractcomplexsettinginstance.md) object.|
|[Delete deviceManagementAbstractComplexSettingInstance](../api/intune-deviceintent-devicemanagementabstractcomplexsettinginstance-delete.md)|None|Deletes a [deviceManagementAbstractComplexSettingInstance](../resources/intune-deviceintent-devicemanagementabstractcomplexsettinginstance.md).|
|[Update deviceManagementAbstractComplexSettingInstance](../api/intune-deviceintent-devicemanagementabstractcomplexsettinginstance-update.md)|[deviceManagementAbstractComplexSettingInstance](../resources/intune-deviceintent-devicemanagementabstractcomplexsettinginstance.md)|Update the properties of a [deviceManagementAbstractComplexSettingInstance](../resources/intune-deviceintent-devicemanagementabstractcomplexsettinginstance.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The setting instance ID Inherited from [deviceManagementSettingInstance](../resources/intune-deviceintent-devicemanagementsettinginstance.md)|
|definitionId|String|The ID of the setting definition for this instance Inherited from [deviceManagementSettingInstance](../resources/intune-deviceintent-devicemanagementsettinginstance.md)|
|valueJson|String|JSON representation of the value Inherited from [deviceManagementSettingInstance](../resources/intune-deviceintent-devicemanagementsettinginstance.md)|
|implementationId|String|The definition ID for the chosen implementation of this complex setting|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|value|[deviceManagementSettingInstance](../resources/intune-deviceintent-devicemanagementsettinginstance.md) collection|The values that make up the complex setting|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagementAbstractComplexSettingInstance"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementAbstractComplexSettingInstance",
  "id": "String (identifier)",
  "definitionId": "String",
  "valueJson": "String",
  "implementationId": "String"
}
```