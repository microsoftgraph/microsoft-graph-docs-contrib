---
title: "teamsChannelPlanner resource type"
description: "Provides access to Planner resources for a Teams shared channel."
ms.localizationpriority: medium
author: "DanluCui"
ms.subservice: "planner"
doc_type: resourcePageType
ms.date: 01/15/2025
---

# teamsChannelPlanner resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides access to Planner resources for a Teams shared [channel](channel.md). This resource doesn't contain any usable properties.

Inherits from [entity](entity.md).

## Methods
| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List plans](../api/teamschannelplanner-list-plans.md) |[plannerPlan](plannerplan.md) collection| Get a list of [plannerPlan](../resources/plannerplan.md) objects owned by a shared [channel](../resources/channel.md) in Teams.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| The unique identifier for the **teamsChannelPlanner** object. Read-only. Inherited from [entity](entity.md).|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|plans|[plannerPlan](plannerplan.md) collection| A collection of [plannerPlan](plannerplan.md) objects owned by the Teams channel. Currently, only shared channels are supported. Read-only. Nullable.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "keyProperty": "id",
  "baseType":"microsoft.graph.entity",  
  "@odata.type": "microsoft.graph.teamsChannelPlanner"
}-->

```json
{
  "id": "String (identifier)"
}
```

<!-- uuid: 3da1192e-9af9-47d4-b32c-1ba82ddabcd1
2025-01-15 22:58:43 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "teamsChannelPlanner resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->