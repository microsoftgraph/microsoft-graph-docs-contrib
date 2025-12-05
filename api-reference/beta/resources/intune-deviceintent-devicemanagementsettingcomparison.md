---
title: "deviceManagementSettingComparison resource type"
description: "Entity representing setting comparison result"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceManagementSettingComparison resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Entity representing setting comparison result

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The setting ID|
|displayName|String|The setting's display name|
|definitionId|String|The ID of the setting definition for this instance|
|currentValueJson|String|JSON representation of current intent (or) template setting's value|
|newValueJson|String|JSON representation of new template setting's value|
|comparisonResult|[deviceManagementComparisonResult](../resources/intune-deviceintent-devicemanagementcomparisonresult.md)|Setting comparison result. The possible values are: `unknown`, `equal`, `notEqual`, `added`, `removed`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceManagementSettingComparison"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementSettingComparison",
  "id": "String (identifier)",
  "displayName": "String",
  "definitionId": "String",
  "currentValueJson": "String",
  "newValueJson": "String",
  "comparisonResult": "String"
}
```