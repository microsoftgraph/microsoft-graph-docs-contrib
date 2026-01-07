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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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