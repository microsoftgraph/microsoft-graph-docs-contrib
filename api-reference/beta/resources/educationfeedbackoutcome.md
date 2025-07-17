---
title: "educationFeedbackOutcome resource type"
description: "An educationOutcome that gives feedback in the form of text."
ms.localizationpriority: medium
author: "dipakboyed"
ms.subservice: "education"
doc_type: "resourcePageType"
toc.title: Feedback outcome
ms.date: 07/23/2024
---

# educationFeedbackOutcome resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents feedback on an [educationOutcome](educationoutcome.md) object in the form of text. 

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Update outcome](../api/educationoutcome-update.md) | [educationOutcome](educationoutcome.md) | Update educationOutcome object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String|Unique identifier for the educationFeedbackOutcome.|
|feedback|[educationFeedback](educationfeedback.md)|Teacher's written feedback to the student.|
|publishedFeedback|[educationFeedback](educationfeedback.md)|A copy of the feedback property that is made when the grade is released to the student.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationFeedbackOutcome",
  "keyProperty": "id"
}-->

```json
{
  "id": "String (identifier)",
  "feedback": {"@odata.type": "microsoft.graph.educationFeedback"},
  "publishedFeedback": {"@odata.type": "microsoft.graph.educationFeedback"}
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "educationFeedbackOutcome resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

