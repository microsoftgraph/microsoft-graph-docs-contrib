---
title: "settingSource resource type"
description: "Intune Deviceconfig Settingsource Resources ."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# settingSource resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.



## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String||
|displayName|String||
|sourceType|[settingSourceType](../resources/intune-deviceconfig-settingsourcetype.md)|. Possible values are: `deviceConfiguration`, `deviceIntent`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.settingSource"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.settingSource",
  "id": "String (identifier)",
  "displayName": "String",
  "sourceType": "String"
}
```