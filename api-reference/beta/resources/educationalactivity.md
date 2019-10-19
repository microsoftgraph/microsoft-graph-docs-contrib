---
title: "educationalActivity resource type"
description: "PROVIDE DESCRIPTION HERE"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "People"
doc_type: "resourcePageType"
---

# educationalActivity resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

PROVIDE DESCRIPTION HERE

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get educationalActivity](../api/educationalactivity-get.md) | [educationalActivity](educationalactivity.md) | Read properties and relationships of educationalActivity object. |
| [Update](../api/educationalactivity-update.md) | [educationalActivity](educationalactivity.md) | Update educationalActivity object. |
| [Delete](../api/educationalactivity-delete.md) | None | Delete educationalActivity object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|completionMonthYear|Date||
|endMonthYear|Date||
|institution|[institutionData](institutiondata.md)||
|program|[educationalActivityDetail](educationalactivitydetail.md)||
|startMonthYear|Date||

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationalActivity",
  "baseType": ""
}-->

```json
{
  "completionMonthYear": "String (timestamp)",
  "endMonthYear": "String (timestamp)",
  "institution": {"@odata.type": "microsoft.graph.institutionData"},
  "program": {"@odata.type": "microsoft.graph.educationalActivityDetail"},
  "startMonthYear": "String (timestamp)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "educationalActivity resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->