---
title: "userSolutionRoot resource type"
description: "Represents an identifier that relates a user to the working time schedule triggers."
author: "galalalym"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 09/13/2024
---

# userSolutionRoot resource type

Namespace: microsoft.graph

Represents an identifier that relates a user to the working time schedule triggers.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the user's custom solution entity. Read-only.|

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
