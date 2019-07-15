---
title: "educationRubric resource type"
description: "A grading rubric that can be attached to an assignment"
localization_priority: Normal
author: "dipakboyed"
ms.prod: "education"
doc_type: "resourcePageType"
---

# educationRubric resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A grading rubric that can be attached to an assignment. A rubric is associated with an **educationUser** (teacher), and attached to one or more **educationAssignment** resources. 

A grading rubric is a matrix of *qualities*, *levels*, and *criteria*, as follows:

| | Level | Level |
|:--|:--|:--|
| Quality | Criterion | Criterion |
| Quality | Criterion | Criterion |

An example of a grading rubric might be:

| | Good | Poor |
|:--|:--|:--|
| Argument | The essay's argument is persuasive. | The essay's argument does not make sense. |
| Spelling and Grammar | The essay uses proper spelling and grammar with few or no errors. | The essay has numerous errors in spelling and/or grammar. |

Grading using a rubric involves selecting one *level* for each *quality* in the rubric.

A rubric *may* have points associated with each level, and a weight associated with each quality.  If present, weights must add up to 100.

| | Good (2 points) | Poor (1 point) |
|:--|:--|:--|
| Argument (weight 50) | The essay's argument is persuasive. | The essay's argument does not make sense. |
| Spelling and Grammar (weight 50) | The essay uses proper spelling and grammar with few or no errors. | The essay has numerous errors in spelling and/or grammar. |

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get educationRubric](../api/educationrubric-get.md) | [educationRubric](educationrubric.md) | Read properties and relationships of educationRubric object. |
| [Update educationRubric](../api/educationrubric-update.md) | [educationRubric](educationrubric.md) | Update educationRubric object. |
| [Delete educationRubric](../api/educationrubric-delete.md) | None | Delete educationRubric object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|createdBy|[identitySet](identityset.md)||
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|description|[itemBody](itembody.md)|The description of this rubric.|
|displayName|String|The name of this rubric.|
|grading|[educationAssignmentGradeType](educationassignmentgradetype.md)|The grading type of this rubric -- null for a no-points rubric, or [educationAssignmentPointsGradeType](educationassignmentpointsgradetype.md) for a points rubric.|
|lastModifiedBy|[identitySet](identityset.md)|Who was the last user to modify the resource.|
|lastModifiedDateTime|DateTimeOffset|Moment in time when the resource was last modified.  The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
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
    "displayName": "Example Points Rubric",
    "id": "bf040af7-a5ff-4abe-a8c8-1bdc532344c2",
    "description": {
        "content": "This is an example of a rubric with points",
        "contentType": "text"
    },
    "levels": [
        {
            "levelId": "519cd134-c513-40b9-aa71-fdb0d063c084",
            "displayName": "Good",
            "description": {
                "content": "",
                "contentType": "text"
            },
            "grading": {
                "@odata.type": "#microsoft.education.assignments.api.educationAssignmentPointsGradeType",
                "maxPoints": 2
            }
        },
        {
            "levelId": "db2a0c91-abef-44cb-b8b1-ef1f85ef4a77",
            "displayName": "Poor",
            "description": {
                "content": "",
                "contentType": "text"
            },
            "grading": {
                "@odata.type": "#microsoft.education.assignments.api.educationAssignmentPointsGradeType",
                "maxPoints": 1
            }
        }
    ],
    "qualities": [
        {
            "qualityId": "bbf3fb4a-a794-4b51-a1ad-c22fb891c5d8",
            "weight": 50,
            "description": {
                "content": "Argument",
                "contentType": "text"
            },
            "criteria": [
                {
                    "id": "5e637d79-f26b-4ea6-acd7-73824f0c0967",
                    "description": {
                        "content": "The essay's argument is persuasive.",
                        "contentType": "text"
                    }
                },
                {
                    "id": "ebdcc27f-d1ec-4aa3-9da7-bd8d7842e3d3",
                    "description": {
                        "content": "The essay's argument does not make sense.",
                        "contentType": "text"
                    }
                }
            ]
        },
        {
            "qualityId": "ebe97fd7-47f7-4e9a-b31b-221ad731fc5a",
            "weight": 50,
            "description": {
                "content": "Spelling and Grammar",
                "contentType": "text"
            },
            "criteria": [
                {
                    "id": "5417252a-f810-41eb-9a83-09276a258a08",
                    "description": {
                        "content": "The essay uses proper spelling and grammar with few or no errors.",
                        "contentType": "text"
                    }
                },
                {
                    "id": "5de220bd-74b9-41a7-85d5-9be7c6cb7933",
                    "description": {
                        "content": "The essay has numerous errors in spelling and/or grammar.",
                        "contentType": "text"
                    }
                }
            ]
        }
    ],
    "grading": {
        "@odata.type": "#microsoft.education.assignments.api.educationAssignmentPointsGradeType",
        "maxPoints": 100
    }
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