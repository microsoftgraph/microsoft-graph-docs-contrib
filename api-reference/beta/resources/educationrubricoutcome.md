---
title: "educationRubricOutcome resource type"
description: "An educationOutcome that provides a graded rubric"
localization_priority: Normal
author: "dipakboyed"
ms.prod: "education"
doc_type: "resourcePageType"
---

# educationRubricOutcome resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An [educationOutcome](educationoutcome.md) that provides a graded rubric.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get educationOutcome](../api/educationoutcome-get.md) | [educationOutcome](educationoutcome.md) | Read properties and relationships of educationOutcome object. |
| [Update educationOutcome](../api/educationoutcome-update.md) | [educationOutcome](educationoutcome.md) | Update educationOutcome object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|lastModifiedBy|[identitySet](identityset.md)|Who was the last user to modify the resource.|
|lastModifiedDateTime|DateTimeOffset|Moment in time when the resource was last modified.  The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|publishedRubricQualityFeedback|[rubricQualityFeedbackModel](rubricqualityfeedbackmodel.md) collection|A copy of the rubricQualityFeedback property that is made when the grade is released to the student.|
|publishedRubricQualitySelectedLevels|[rubricQualitySelectedColumnModel](rubricqualityselectedcolumnmodel.md) collection|A copy of the rubricQualitySelectedLevels property that is made when the grade is released to the student.|
|rubricQualityFeedback|[rubricQualityFeedbackModel](rubricqualityfeedbackmodel.md) collection|A collection of specific feedback for each quality of this rubric.|
|rubricQualitySelectedLevels|[rubricQualitySelectedColumnModel](rubricqualityselectedcolumnmodel.md) collection|The level that the teacher has selected for each quality while grading this assignment.|

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationRubricOutcome",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
    "@odata.type": "#microsoft.graph.educationRubricOutcome",
    "id": "65a46d78-1a2b-4a7e-bcf8-78a22ac2611b",
    "rubricQualityFeedback": [
        {
            "qualityId": "ebe97fd7-47f7-4e9a-b31b-221ad731fc5a",
            "feedback": {
                "content": "This is feedback specific to this quality of the rubric.",
                "contentType": "text"
            }
        },
        {
            "qualityId": "bbf3fb4a-a794-4b51-a1ad-c22fb891c5d8",
            "feedback": {
                "content": "This is feedback specific to this quality of the rubric.",
                "contentType": "text"
            }
        }
    ],
    "rubricQualitySelectedLevels": [
        {
            "qualityId": "ebe97fd7-47f7-4e9a-b31b-221ad731fc5a",
            "columnId": "db2a0c91-abef-44cb-b8b1-ef1f85ef4a77"
        },
        {
            "qualityId": "bbf3fb4a-a794-4b51-a1ad-c22fb891c5d8",
            "columnId": "519cd134-c513-40b9-aa71-fdb0d063c084"
        }
    ],
    "publishedRubricQualityFeedback": [
        {
            "qualityId": "ebe97fd7-47f7-4e9a-b31b-221ad731fc5a",
            "feedback": {
                "content": "This is feedback specific to this quality of the rubric.",
                "contentType": "text"
            }
        },
        {
            "qualityId": "bbf3fb4a-a794-4b51-a1ad-c22fb891c5d8",
            "feedback": {
                "content": "This is feedback specific to this quality of the rubric.",
                "contentType": "text"
            }
        }
    ],
    "publishedRubricQualitySelectedLevels": [
        {
            "qualityId": "ebe97fd7-47f7-4e9a-b31b-221ad731fc5a",
            "columnId": "db2a0c91-abef-44cb-b8b1-ef1f85ef4a77"
        },
        {
            "qualityId": "bbf3fb4a-a794-4b51-a1ad-c22fb891c5d8",
            "columnId": "519cd134-c513-40b9-aa71-fdb0d063c084"
        }
    ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "educationRubricOutcome resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->