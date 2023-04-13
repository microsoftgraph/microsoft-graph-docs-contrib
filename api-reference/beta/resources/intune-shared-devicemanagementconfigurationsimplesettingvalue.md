---
title: "deviceManagementConfigurationSimpleSettingValue resource type"
description: "Simple setting value"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagementConfigurationSimpleSettingValue resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Simple setting value


Inherits from [deviceManagementConfigurationSettingValue](../resources/intune-shared-devicemanagementconfigurationsettingvalue.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|settingValueTemplateReference|[deviceManagementConfigurationSettingValueTemplateReference](../resources/intune-shared-devicemanagementconfigurationsettingvaluetemplatereference.md)|Setting value template reference Inherited from [deviceManagementConfigurationSettingValue](../resources/intune-shared-devicemanagementconfigurationsettingvalue.md)|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceManagementConfigurationSimpleSettingValue"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingValue",
  "settingValueTemplateReference": {
    "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingValueTemplateReference",
    "settingValueTemplateId": "String",
    "useTemplateDefault": true
  }
}
```
