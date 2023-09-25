---
title: "deviceManagementIntentCustomizedSetting resource type"
description: "Default and customized value of a setting in a Security Baseline"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagementIntentCustomizedSetting resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Default and customized value of a setting in a Security Baseline

## Properties
|Property|Type|Description|
|:---|:---|:---|
|definitionId|String|The ID of the setting definition for this setting|
|defaultJson|String|JSON representation of the default value from the template|
|customizedJson|String|JSON representation of the customized value, if different from default|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceManagementIntentCustomizedSetting"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementIntentCustomizedSetting",
  "definitionId": "String",
  "defaultJson": "String",
  "customizedJson": "String"
}
```
