---
author: daspek
description: The itemActivityStat resource provides information about activities that took place within an interval of time.
ms.date: 09/14/2017
title: ItemActivityStat
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: sharepoint
---

# itemActivityStat resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **itemActivityStat** resource provides information about activities that took place within an interval of time.

## Properties

| Property       | Type               | Description                                                                             |
| :------------- | :----------------- | :-------------------------------------------------------------------------------------- |
| incompleteData | [incompleteData][] | Indicates that the statistics in this interval are based on incomplete data. Read-only. |
| isTrending     | Boolean            | Indicates whether the item is "trending." Read-only.                                    |
| startDateTime  | DateTimeOffset     | When the interval starts. Read-only.                                                    |
| endDateTime    | DateTimeOffset     | When the interval ends. Read-only.                                                      |
| create         | [itemActionStat][] | Statistics about the **create** actions in this interval. Read-only.                    |
| edit           | [itemActionStat][] | Statistics about the **edit** actions in this interval. Read-only.                      |
| delete         | [itemActionStat][] | Statistics about the **delete** actions in this interval. Read-only.                    |
| move           | [itemActionStat][] | Statistics about the **move** actions in this interval. Read-only.                      |
| access         | [itemActionStat][] | Statistics about the **access** actions in this interval. Read-only.                    |

[itemActionStat]: itemactionstat.md
[incompleteData]: incompletedata.md

## Relationships

| Relationship | Type                        | Description                                                                       |
| :----------- | :-------------------------- | :-------------------------------------------------------------------------------- |
| activities   | [itemActivity][] collection | Exposes the **itemActivities** represented in this **itemActivityStat** resource. |

[itemActivity]: itemactivity.md

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [ ],
  "baseType": "microsoft.graph.entity",
  "@type": "microsoft.graph.itemActivityStat",
}-->

```json
{
  "activities": [{"@odata.type": "microsoft.graph.itemActivity"}],
  "incompleteData": {"@odata.type": "microsoft.graph.incompleteData"},
  "isTrending": true,
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "create": {"@odata.type": "microsoft.graph.itemActionStat"},
  "delete": {"@odata.type": "microsoft.graph.itemActionStat"},
  "edit": {"@odata.type": "microsoft.graph.itemActionStat"},
  "move": {"@odata.type": "microsoft.graph.itemActionStat"},
  "access": {"@odata.type": "microsoft.graph.itemActionStat"}
}
```

## Remarks

<!--
{
  "type": "#page.annotation",
  "description": "The ItemActivityStat object provides information about activities that took place on an item.",
  "keywords": "activities,activity,action,analytics",
  "section": "documentation",
  "tocPath": "Resources/ItemActivityStat",
  "suppressions": []
}
-->
