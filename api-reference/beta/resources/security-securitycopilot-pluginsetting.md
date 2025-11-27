---
title: "Represents the settings for a Security Copilot plugin."
description: "Represents the settings for a Security Copilot plugin."
author: "spunukol"
ms.date: 07/17/2025
ms.localizationpriority: medium
ms.subservice: "security-copilot"
doc_type: resourcePageType
---

# pluginSetting resource type

Namespace: microsoft.graph.security.securityCopilot

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the settings for a [plugin](../resources/security-securitycopilot-plugin.md) in Security Copilot. 


## Properties
|Property|Type|Description|
|:---|:---|:---|
|acceptableValues|String collection|Acceptable values for plugin type|
|defaultValue|String|Default value available for the plugin if not configured|
|description|String|Description of the value requested|
|displayType|microsoft.graph.security.securityCopilot.pluginSettingDisplayType|Display type available any user experience if required. The possible values are: `none`, `textbox`, `checkbox`, `dropdown`, `unknownFutureValue`.|
|hintText|String|Hint for the plugin|
|isRequired|Boolean|Setting whether the value is required|
|label|String|Label for the setting|
|name|String|Name of the setting|
|settingValue|microsoft.graph.security.securityCopilot.pluginSettingType|Available setting values. The possible values are: `string`, `bool`, `array`, `enum`, `secretString`, `unknownFutureValue`.|
|value|String|Value|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.securityCopilot.pluginSetting"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.securityCopilot.pluginSetting",
  "name": "String",
  "label": "String",
  "description": "String",
  "hintText": "String",
  "settingValue": "String",
  "isRequired": "Boolean",
  "defaultValue": "String",
  "value": "String",
  "acceptableValues": [
    "String"
  ],
  "displayType": "String"
}
```

