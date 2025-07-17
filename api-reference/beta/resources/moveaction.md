---
author: daspek
description: The presence of the MoveAction resource on an itemActivity indicates that the activity moved an item.
ms.date: 09/14/2017
title: MoveAction
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: sharepoint
---

# MoveAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The presence of the **MoveAction** resource on an [**itemActivity**][activity] indicates that the activity moved an item.

[activity]: itemactivity.md

## Properties

| Property | Type   | Description                                       |
| :------- | :----- | :------------------------------------------------ |
| from     | string | The name of the location the item was moved from. |
| to       | string | The name of the location the item was moved to.   |

## Relationships
None.

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [ ],
  "@type": "microsoft.graph.moveAction"
}-->

```json
{
  "from": "string",
  "to": "string"
}
```

## Remarks

Item activity records are currently only available on SharePoint and OneDrive for Business.

<!--
{
  "type": "#page.annotation",
  "description": "The MoveAction object provides information about an activity that moved an item.",
  "keywords": "activities,activity,action,move,moved",
  "section": "documentation",
  "tocPath": "Resources/MoveAction",
  "suppressions": []
}
-->
