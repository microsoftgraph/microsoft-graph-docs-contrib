---
title: "teamTemplate resource type"
description: "Represents a logical container for all the definitions and versions of the same team template."
author: "nkramer"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamTemplate resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a logical container for all the definitions and versions of the same team template.

> **Note**: This API is available for private preview only and it will be available to the public shortly. We will publish a blog post in the [Microsoft 365 Developer Blog](https://devblogs.microsoft.com/microsoft365dev/) when this API becomes available for public preview.


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
