---
title: "educationPointsOutcome resource type"
description: "An educationOutcome that gives a numerical grade"
localization_priority: Normal
author: "dipakboyed"
ms.prod: "education"
doc_type: "resourcePageType"
---

# educationPointsOutcome resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An [educationOutcome](educationoutcome.md) that gives a numerical grade.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get educationOutcome](../api/educationoutcome-get.md) | [educationOutcome](educationoutcome.md) | Read properties and relationships of educationOutcome object. |
| [Update educationOutcome](../api/educationoutcome-update.md) | [educationOutcome](educationoutcome.md) | Update educationOutcome object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|points|[educationAssignmentPointsGrade](educationassignmentpointsgrade.md)|The numeric grade the teacher has given the student for this assignment.|
|publishedPoints|[educationAssignmentPointsGrade](educationassignmentpointsgrade.md)|A copy of the points property that is made when the grade is released to the student.|

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationPointsOutcome",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
    "@odata.type": "#microsoft.graph.educationPointsOutcome",
    "id": "ea1351f6-ba33-4940-b2cb-6a7254af2dc8",
    "points": {
        "gradedDateTime": "2019-07-15T22:36:02.2592364Z",
        "points": 75,
        "gradedBy": {
            "user": {
                "id": "9391878d-903c-406c-bb1c-0f17d00fd878"
            }
        }
    },
    "publishedPoints": {
        "gradedDateTime": "2019-07-15T22:36:02.2592364Z",
        "points": 75,
        "gradedBy": {
            "user": {
                "id": "9391878d-903c-406c-bb1c-0f17d00fd878"
            }
        }
    }
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "educationPointsOutcome resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->