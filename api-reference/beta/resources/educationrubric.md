---
title: "educationRubric resource type"
description: "Represents a grading rubric that can be attached to an assignment."
ms.localizationpriority: medium
author: "dipakboyed"
ms.subservice: "education"
doc_type: "resourcePageType"
toc.title: Rubric
ms.date: 07/24/2024
---

# educationRubric resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a grading rubric that can be attached to an assignment. A rubric is associated with an **educationUser** (teacher), and attached to one or more **educationAssignment** resources. 

For more information, see [Education rubric overview](/graph/education-rubric-overview).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/educationuser-list-rubrics.md) | [educationRubric](educationrubric.md) collection | Retrieve a list of **educationRubric** objects. |
| [Create](../api/educationuser-post-rubrics.md) | [educationRubric](educationrubric.md) | Create a new **educationRubric** object. |
| [Get](../api/educationrubric-get.md) | [educationRubric](educationrubric.md) | Read properties and relationships of an **educationRubric** object. |
| [Update](../api/educationrubric-update.md) | [educationRubric](educationrubric.md) | Update an **educationRubric** object. |
| [Delete](../api/educationrubric-delete.md) | None | Delete an **educationRubric** object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|createdBy|[identitySet](identityset.md)|The user who created this resource.|
|createdDateTime|DateTimeOffset|The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|description|[itemBody](itembody.md)|The description of this rubric.|
|displayName|String|The name of this rubric.|
|grading|[educationAssignmentGradeType](educationassignmentgradetype.md)|The grading type of this rubric. You can use `null` for a no-points rubric or [educationAssignmentPointsGradeType](educationassignmentpointsgradetype.md) for a points rubric.|
|id|String|Unique identifier for the rubric.|
|lastModifiedBy|[identitySet](identityset.md)|The last user to modify the resource.|
|lastModifiedDateTime|DateTimeOffset|Moment in time when the resource was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|levels|[rubricLevel](rubriclevel.md) collection|The collection of levels making up this rubric.|
|qualities|[rubricQuality](rubricquality.md) collection|The collection of qualities making up this rubric.|

## Relationships

None

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationRubric",
  "keyProperty": "id"
}-->

```json
{
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "description": {"@odata.type": "microsoft.graph.itemBody"},
  "displayName": "String",
  "grading": {"@odata.type": "microsoft.graph.educationAssignmentGradeType"},
  "id": "String (identifier)",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "levels": [{"@odata.type": "microsoft.graph.rubricLevel"}],
  "qualities": [{"@odata.type": "microsoft.graph.rubricQuality"}]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "educationRubric resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
