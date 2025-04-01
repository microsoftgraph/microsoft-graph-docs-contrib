---
title: "deviceConfigurationOption resource type"
description: "A list of options for a single category for a setting with dynamic choices"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceConfigurationOption resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A list of options for a single category for a setting with dynamic choices

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name for a single category for a setting with dynamic choices. For example, for software updates, this could be Version or Build.|
|availableOptions|String collection|A list of options for a single category for a setting with dynamic choices. For example, for software updates, this could be a list of Versions or a list of Builds.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceConfigurationOption"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceConfigurationOption",
  "displayName": "String",
  "availableOptions": [
    "String"
  ]
}
```
