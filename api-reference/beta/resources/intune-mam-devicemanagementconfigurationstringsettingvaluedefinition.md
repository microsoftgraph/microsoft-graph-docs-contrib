---
title: "deviceManagementConfigurationStringSettingValueDefinition resource type"
description: "String constraints"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceManagementConfigurationStringSettingValueDefinition resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

String constraints


Inherits from [deviceManagementConfigurationSettingValueDefinition](../resources/intune-shared-devicemanagementconfigurationsettingvaluedefinition.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|format|[deviceManagementConfigurationStringFormat](../resources/intune-shared-devicemanagementconfigurationstringformat.md)|Pre-defined format of the string. The possible values are: `none`, `email`, `guid`, `ip`, `base64`, `url`, `version`, `xml`, `date`, `time`, `binary`, `regEx`, `json`, `dateTime`, `surfaceHub`.|
|inputValidationSchema|String|Regular expression or any xml or json schema that the input string should match|
|maximumLength|Int64|Maximum length of string|
|minimumLength|Int64|Minimum length of string|
|isSecret|Boolean|Specifies whether the setting needs to be treated as a secret. Settings marked as yes will be encrypted in transit and at rest and will be displayed as asterisks when represented in the UX.|
|fileTypes|String collection|Supported file types for this setting.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceManagementConfigurationStringSettingValueDefinition"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementConfigurationStringSettingValueDefinition",
  "format": "String",
  "inputValidationSchema": "String",
  "maximumLength": 1024,
  "minimumLength": 1024,
  "isSecret": true,
  "fileTypes": [
    "String"
  ]
}
```
