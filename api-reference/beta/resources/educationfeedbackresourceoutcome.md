---
title: "educationFeedbackResourceOutcome resource type"
description: "Represents feedback on an educationOutcome object in the form of a document."
ms.localizationpriority: medium
author: "cristobal-buenrostro"
ms.prod: "education"
doc_type: "resourcePageType"
---

# educationFeedbackResourceOutcome resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents feedback on an [educationOutcome](educationoutcome.md) object in the form of a document.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Create educationFeedbackResourceOutcome](../api/educationfeedbackresourceoutcome-post-outcomes.md) | [educationOutcome](educationoutcome.md) | Create a new [feedback resource](../resources/educationfeedbackresourceoutcome.md) for a submission. |
| [Delete educationFeedbackResourceOutcome](../api/educationfeedbackresourceoutcome-delete.md) | None | Delete a [feedback resource](../resources/educationfeedbackresourceoutcome.md) from a submission. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|feedbackResource|[educationResource](educationresource.md)|The actual feedback resource.|
|id|String|Unique identifier for the **educationFeedbackResourceOutcome**.|
|resourceStatus|educationFeedbackResourceOutcomeStatus|The status of the feedback resource. The possible values are: `notPublished`, `pendingPublish`, `published`, `failedPublish`, and `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationFeedbackResourceOutcome",
  "keyProperty": "id"
}-->

```json
{
  "feedbackResource": {"@odata.type": "microsoft.graph.educationResource"},
  "id": "String (identifier)",
  "resourceStatus": {"@odata.type": "microsoft.graph.educationFeedbackResourceOutcomeStatus"}
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2022-05-05 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "educationFeedbackResourceOutcome resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
