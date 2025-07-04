---
title: "userSolutionRoot resource type"
description: "Represents a user's custom userSolutionRoot entity."
author: "galalalym"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 08/14/2024
---

# userSolutionRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a user's custom solution entity.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|A unique programmatic identifier for the entity. Read-only.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|workingTimeSchedule|[workingTimeSchedule](../resources/workingtimeschedule.md)|The working time schedule entity associated with the solution.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userSolutionRoot",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userSolutionRoot",
  "id": "String (identifier)"
}
```
