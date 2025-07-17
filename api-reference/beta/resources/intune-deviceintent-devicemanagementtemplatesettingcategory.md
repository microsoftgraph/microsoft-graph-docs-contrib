---
title: "deviceManagementTemplateSettingCategory resource type"
description: "Entity representing a template setting category"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceManagementTemplateSettingCategory resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Entity representing a template setting category


Inherits from [deviceManagementSettingCategory](../resources/intune-deviceintent-devicemanagementsettingcategory.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceManagementTemplateSettingCategories](../api/intune-deviceintent-devicemanagementtemplatesettingcategory-list.md)|[deviceManagementTemplateSettingCategory](../resources/intune-deviceintent-devicemanagementtemplatesettingcategory.md) collection|List properties and relationships of the [deviceManagementTemplateSettingCategory](../resources/intune-deviceintent-devicemanagementtemplatesettingcategory.md) objects.|
|[Get deviceManagementTemplateSettingCategory](../api/intune-deviceintent-devicemanagementtemplatesettingcategory-get.md)|[deviceManagementTemplateSettingCategory](../resources/intune-deviceintent-devicemanagementtemplatesettingcategory.md)|Read properties and relationships of the [deviceManagementTemplateSettingCategory](../resources/intune-deviceintent-devicemanagementtemplatesettingcategory.md) object.|
|[Create deviceManagementTemplateSettingCategory](../api/intune-deviceintent-devicemanagementtemplatesettingcategory-create.md)|[deviceManagementTemplateSettingCategory](../resources/intune-deviceintent-devicemanagementtemplatesettingcategory.md)|Create a new [deviceManagementTemplateSettingCategory](../resources/intune-deviceintent-devicemanagementtemplatesettingcategory.md) object.|
|[Delete deviceManagementTemplateSettingCategory](../api/intune-deviceintent-devicemanagementtemplatesettingcategory-delete.md)|None|Deletes a [deviceManagementTemplateSettingCategory](../resources/intune-deviceintent-devicemanagementtemplatesettingcategory.md).|
|[Update deviceManagementTemplateSettingCategory](../api/intune-deviceintent-devicemanagementtemplatesettingcategory-update.md)|[deviceManagementTemplateSettingCategory](../resources/intune-deviceintent-devicemanagementtemplatesettingcategory.md)|Update the properties of a [deviceManagementTemplateSettingCategory](../resources/intune-deviceintent-devicemanagementtemplatesettingcategory.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The category ID Inherited from [deviceManagementSettingCategory](../resources/intune-deviceintent-devicemanagementsettingcategory.md)|
|displayName|String|The category name Inherited from [deviceManagementSettingCategory](../resources/intune-deviceintent-devicemanagementsettingcategory.md)|
|hasRequiredSetting|Boolean|The category contains top level required setting Inherited from [deviceManagementSettingCategory](../resources/intune-deviceintent-devicemanagementsettingcategory.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|settingDefinitions|[deviceManagementSettingDefinition](../resources/intune-deviceintent-devicemanagementsettingdefinition.md) collection|The setting definitions this category contains Inherited from [deviceManagementSettingCategory](../resources/intune-deviceintent-devicemanagementsettingcategory.md)|
|recommendedSettings|[deviceManagementSettingInstance](../resources/intune-deviceintent-devicemanagementsettinginstance.md) collection|The settings this category contains|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagementTemplateSettingCategory"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementTemplateSettingCategory",
  "id": "String (identifier)",
  "displayName": "String",
  "hasRequiredSetting": true
}
```