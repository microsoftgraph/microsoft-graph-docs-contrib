---
title: "deviceManagementIntentCustomizedSetting resource type"
description: "Default and customized value of a setting in a Security Baseline"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceManagementIntentCustomizedSetting resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

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