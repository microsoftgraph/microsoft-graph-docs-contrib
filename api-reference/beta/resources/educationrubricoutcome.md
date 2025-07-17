---
title: "educationRubricOutcome resource type"
description: "Represents an educationOutcome that provides a graded rubric"
ms.localizationpriority: medium
author: "dipakboyed"
ms.subservice: "education"
doc_type: "resourcePageType"
toc.title: Rubric outcome
ms.date: 06/10/2024
---

# educationRubricOutcome resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an [educationOutcome](educationoutcome.md) that provides a graded rubric.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Update outcome](../api/educationoutcome-update.md) | [educationOutcome](educationoutcome.md) | Update educationOutcome object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String|Unique identifier for the **educationRubricOutcome**.|
|lastModifiedBy|[identitySet](identityset.md)|The last user to modify the resource.|
|lastModifiedDateTime|DateTimeOffset|Moment in time when the resource was last modified.  The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|publishedRubricQualityFeedback|[rubricQualityFeedbackModel](rubricqualityfeedbackmodel.md) collection|A copy of the **rubricQualityFeedback** property that is made when the grade is released to the student.|
|publishedRubricQualitySelectedLevels|[rubricQualitySelectedColumnModel](rubricqualityselectedcolumnmodel.md) collection|A copy of the **rubricQualitySelectedLevels** property that is made when the grade is released to the student.|
|rubricQualityFeedback|[rubricQualityFeedbackModel](rubricqualityfeedbackmodel.md) collection|A collection of specific feedback for each quality of this rubric.|
|rubricQualitySelectedLevels|[rubricQualitySelectedColumnModel](rubricqualityselectedcolumnmodel.md) collection|The level that the teacher has selected for each quality while grading this assignment.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationRubricOutcome",
  "keyProperty": "id"
}-->

```json
{
  "id": "String (identifier)",
  "publishedRubricQualityFeedback": [{"@odata.type": "microsoft.graph.rubricQualityFeedbackModel"}],
  "publishedRubricQualitySelectedLevels": [{"@odata.type": "microsoft.graph.rubricQualitySelectedColumnModel"}],
  "rubricQualityFeedback": [{"@odata.type": "microsoft.graph.rubricQualityFeedbackModel"}],
  "rubricQualitySelectedLevels": [{"@odata.type": "microsoft.graph.rubricQualitySelectedColumnModel"}]
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

