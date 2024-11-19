---
title: "aiInteractionLink resource type"
description: "Represents the links that are part of the interaction."
ms.date: 11/18/2024
doc_type: resourcePageType
ms.localizationpriority: medium
author: "bkeerthivasa"
ms.subservice: "teams"
---

# aiInteractionLink resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the links that are part of the interaction. 

## Properties

| Property   | Type | Description |
|:---------------|:--------|:----------|
| linkUrl | String | The URL of the link. |
| displayName | String | Link name. |
| linkType | String | Refers to citations in bot response messages. (Applies to appchat and bizchat). |

## JSON representation

The following JSON representation shows the resource type.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "keyProperty": "id",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.aiInteractionLink"
}-->

```json
{
  "linkUrl": "String",
  "displayName": "String",
  "linkType": "String"
}
```
