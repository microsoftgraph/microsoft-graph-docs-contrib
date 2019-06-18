---
title: "educationPointsOutcome resource type"
description: "An educationOutcome that gives a numerical grade"
localization_priority: Normal
author: ""
ms.prod: ""
doc_type: "resourcePageType"
---

# educationPointsOutcome resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An educationOutcome that gives a numerical grade.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get educationOutcome](../api/educationoutcome-get.md) | [educationOutcome](educationoutcome.md) | Read properties and relationships of educationOutcome object. |
| [Update](../api/educationoutcome-update.md) | [educationOutcome](educationoutcome.md) | Update educationOutcome object. |
| [Delete](../api/educationoutcome-delete.md) | None | Delete educationOutcome object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String| Read-only.|
|lastModifiedBy|[identitySet](identityset.md)||
|lastModifiedDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
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
  "id": "String (identifier)",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "points": {"@odata.type": "microsoft.graph.educationAssignmentPointsGrade"},
  "publishedPoints": {"@odata.type": "microsoft.graph.educationAssignmentPointsGrade"}
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