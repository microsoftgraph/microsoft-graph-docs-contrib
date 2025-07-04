---
title: "deviceManagementConfigurationStringSettingValueTemplate resource type"
description: "String Setting Value Template"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceManagementConfigurationStringSettingValueTemplate resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

String Setting Value Template


Inherits from [deviceManagementConfigurationSimpleSettingValueTemplate](../resources/intune-deviceconfigv2-devicemanagementconfigurationsimplesettingvaluetemplate.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|settingValueTemplateId|String|Setting Value Template Id Inherited from [deviceManagementConfigurationSimpleSettingValueTemplate](../resources/intune-deviceconfigv2-devicemanagementconfigurationsimplesettingvaluetemplate.md)|
|defaultValue|[deviceManagementConfigurationStringSettingValueDefaultTemplate](../resources/intune-deviceconfigv2-devicemanagementconfigurationstringsettingvaluedefaulttemplate.md)|String Setting Value Default Template.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceManagementConfigurationStringSettingValueTemplate"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementConfigurationStringSettingValueTemplate",
  "settingValueTemplateId": "String",
  "defaultValue": {
    "@odata.type": "microsoft.graph.deviceManagementConfigurationStringSettingValueConstantDefaultTemplate",
    "constantValue": "String"
  }
}
```