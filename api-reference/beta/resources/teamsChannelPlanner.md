---
title: "teamsChannelPlanner resource type"
description: "The **teamsChannelPlanner** resource provides access to Planner resources for a Teams shared channel. It doesn't contain any usable properties."
ms.localizationpriority: medium
author: "DanluCui"
ms.subservice: "planner"
doc_type: resourcePageType
ms.date: 01/15/2025
---

# teamsChannelPlanner resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **teamsChannelPlanner** resource provides access to Planner resources for a [channel](channel.md). It doesn't contain any usable properties.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List Teams channel's plans](../api/teamsChannelPlanner-list-plans.md) |[plannerPlan](plannerplan.md) collection| Get a **plannerPlan** object collection.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| Read-only. Identifier of the **teamsChannelPlanner**|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|plans|[plannerPlan](plannerplan.md) collection| Read-only. Nullable. Returns the [plannerPlans](plannerplan.md) owned by the Teams channel (this is only supported for shared channel now).|

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


