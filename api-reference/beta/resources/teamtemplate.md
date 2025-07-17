---
title: "teamTemplate resource type"
description: "Represents a logical container for all the definitions and versions of the same team template."
author: "MSFTRickyCastaneda"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 08/19/2024
---

# teamTemplate resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a logical container for all the definitions and versions of the same team template.



## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List teamTemplates](../api/teamwork-list-teamtemplates.md)|[teamTemplate](../resources/teamtemplatedefinition.md) collection| Get a list of the **teamTemplate** objects available for the tenant.|
|[List definitions](../api/teamtemplate-list-definitions.md)| [teamTemplateDefinition](../resources/teamtemplatedefinition.md) collection | List the [teamTemplateDefinition](../resources/teamstemplate.md) objects associated with a **teamTemplate**.  |

## Properties

| Property            | Type     | Description |
|:------------------- |:-------- |:----------- |
| id                  | String   | Unique identifier of the template. Cannot be null. |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|definitions|[teamtemplatedefinition](../resources/teamtemplatedefinition.md) collection| A generic representation of a team template definition for a team with a specific structure and configuration.|

## JSON representation

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamtemplate",
}-->

```json
{
  "id": "string"
}
```

## Related content

- [team](team.md)
- [teamTemplateDefinition](teamtemplatedefinition.md)
