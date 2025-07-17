---
title: "teamsTemplate resource type"
description: "Describes the teamsTemplate entity."
author: "MSFTRickyCastaneda"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 08/16/2024
---

# teamsTemplate resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A team template is a blueprint for creating a [team](../resources/team.md) in Microsoft Teams. A template specifies the structure, settings, and even content that should be provisioned in a new team created using the template. Microsoft provides a suite of base templates and customers can save their own custom templates.

## Properties

| Property            | Type     | Description |
|:------------------- |:-------- |:----------- |
| id                  | String   | Unique identifier of the template. Cannot be null. |

## Relationships
None.

## JSON representation

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamsTemplate",
  "baseType": "microsoft.graph.entity"
}-->

```json
{
  "id": "string"
}
```

## Related content

- [team](team.md)
- [teamTemplateDefinition](teamtemplatedefinition.md)



