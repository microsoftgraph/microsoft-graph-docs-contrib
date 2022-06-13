---
title: "teamTemplate resource type"
description: "TODO"
author: "nkramer"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamTemplate resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

TO DO.

## Methods
None.

## Properties

| Property            | Type     | Description |
|:------------------- |:-------- |:----------- |
| id                  | String   | Unique identifier of the template. Cannot be null. |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|definitions|[teamTemplateDefinition](../resources/teamtemplatedefinition.md) collection| A generic representation of a team template definition for a team with a specific structure and configuration.|

## JSON representation

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamtemplate",
}-->

```json
{
  "id": "string"
}
```

## See also

- [team](team.md)
- [teamTemplateDefinition](teamtemplatedefinition.md)



