---
title: "settingTemplateValue resource type"
description: "Represents an individual template setting definition, including the default value for the setting, if the setting is not instantiated."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-directory-management"
author: "yuhko-msft"
ms.reviewer: "mbhargav, khotzteam, aadgroupssg"
ms.date: 03/21/2024
---

# settingTemplateValue resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an individual template setting definition, including the default value for the setting, if the setting is not instantiated.


## Properties
| Property       | Type    |Description|
|:---------------|:--------|:----------|
|defaultValue|string|Default value for the setting. Read-only.|
|description|string|Description of the setting. Read-only.|
|name|string|Name of the setting. Read-only.|
|type|string|Type of the setting. Read-only.|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.settingTemplateValue"
}-->

```json
{
  "defaultValue": "string",
  "description": "string",
  "name": "string",
  "type": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "settingTemplateValue resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


