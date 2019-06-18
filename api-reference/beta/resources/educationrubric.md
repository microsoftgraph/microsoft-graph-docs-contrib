---
title: "educationRubric resource type"
description: "A grading rubric that can be attached to an assignment"
localization_priority: Normal
author: ""
ms.prod: ""
doc_type: "resourcePageType"
---

# educationRubric resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A grading rubric that can be attached to an assignment. A rubric is associated with a **User** (teacher), and attached to one or more **Assignments**. 

A grading rubric is a matrix of *qualities*, *levels*, and *criteria*, as follows:

| | Level | Level |
|:--|:--|:--|
| Quality | Criterion | Criterion |
| Quality | Criterion | Criterion |

An example of a grading rubric might be:

| | Excellent | Good | Poor |
|:--|:--|:--|:--|
| Organization | *Well-organized and easily understood* | *Organization is evident* | *Topics are presented in no clear order* |
| Argument | *Argument is clear and persuasive* | *Argument hangs together* | *Argument unclear or incoherent* |

Grading using a rubric involves selecting one *level* for each *quality* in the rubric.

A rubric *may* have points associated with each level, and a weight associated with each quality.  If present, weights must add up to 100.

| | Excellent (3 points) | Good (2 points) | Poor (1 point) |
|:--|:--|:--|:--|
| Organization (weight 40) | *Well-organized and easily understood* | *Organization is evident* | *Topics are presented in no clear order* |
| Argument (weight 60) | *Argument is clear and persuasive* | *Argument hangs together* | *Argument unclear or incoherent* |

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get educationRubric](../api/educationrubric-get.md) | [educationRubric](educationrubric.md) | Read properties and relationships of educationRubric object. |
| [Update](../api/educationrubric-update.md) | [educationRubric](educationrubric.md) | Update educationRubric object. |
| [Delete](../api/educationrubric-delete.md) | None | Delete educationRubric object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|columnHeaders|[rubricLevel](rubriclevel.md) collection|The collection of descriptive column headers corresponding to each level.|
|createdBy|[identitySet](identityset.md)||
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|description|[educationItemBody](educationitembody.md)|The description of this rubric.|
|displayName|String|The name of this rubric.|
|grading|[educationAssignmentGradeType](educationassignmentgradetype.md)|Whether this rubric has points or not.|
|id|String| Read-only.|
|lastModifiedBy|[identitySet](identityset.md)||
|lastModifiedDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|levels|[rubricLevel](rubriclevel.md) collection|The collection of levels making up this rubric.|
|qualities|[rubricQuality](rubricquality.md) collection|The collection of qualities making up this rubric.|

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationRubric",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "columnHeaders": [{"@odata.type": "microsoft.graph.rubricLevel"}],
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "description": {"@odata.type": "microsoft.graph.educationItemBody"},
  "displayName": "String",
  "grading": {"@odata.type": "microsoft.graph.educationRubricGradeType"},
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