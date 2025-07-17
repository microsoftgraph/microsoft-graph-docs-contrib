---
title: "deviceManagementConfigurationSimpleSettingCollectionInstance resource type"
description: "Simple setting collection instance"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceManagementConfigurationSimpleSettingCollectionInstance resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Simple setting collection instance


Inherits from [deviceManagementConfigurationSettingInstance](../resources/intune-shared-devicemanagementconfigurationsettinginstance.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|settingDefinitionId|String|Setting Definition Id Inherited from [deviceManagementConfigurationSettingInstance](../resources/intune-shared-devicemanagementconfigurationsettinginstance.md)|
|settingInstanceTemplateReference|[deviceManagementConfigurationSettingInstanceTemplateReference](../resources/intune-shared-devicemanagementconfigurationsettinginstancetemplatereference.md)|Setting Instance Template Reference Inherited from [deviceManagementConfigurationSettingInstance](../resources/intune-shared-devicemanagementconfigurationsettinginstance.md)|
|simpleSettingCollectionValue|[deviceManagementConfigurationSimpleSettingValue](../resources/intune-deviceconfigv2-devicemanagementconfigurationsimplesettingvalue.md) collection|Simple setting collection instance value|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance",
  "settingDefinitionId": "String",
  "settingInstanceTemplateReference": {
    "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingInstanceTemplateReference",
    "settingInstanceTemplateId": "String"
  },
  "simpleSettingCollectionValue": [
    {
      "@odata.type": "microsoft.graph.deviceManagementConfigurationStringSettingValue",
      "settingValueTemplateReference": {
        "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingValueTemplateReference",
        "settingValueTemplateId": "String",
        "useTemplateDefault": true
      },
      "value": "String"
    }
  ]
}
```