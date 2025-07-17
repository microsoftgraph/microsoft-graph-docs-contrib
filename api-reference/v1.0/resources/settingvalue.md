---
title: "settingValue resource type"
description: "A setting represented by a name/value pair."
ms.localizationpriority: medium
author: "yuhko-msft"
ms.reviewer: "mbhargav, khotzteam, aadgroupssg"
ms.subservice: "entra-groups"
doc_type: resourcePageType
ms.date: 04/03/2024
---

# settingValue resource type

Namespace: microsoft.graph

A setting represented by a name/value pair.

### Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
|name|String| Name of the setting (as defined by the [groupSettingTemplate](groupsettingtemplate.md)). |
|value|String| Value of the setting. |

### JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.settingValue"
}-->

```json
{
  "name": "String",
  "value": "String"
}

```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "settingValue resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

