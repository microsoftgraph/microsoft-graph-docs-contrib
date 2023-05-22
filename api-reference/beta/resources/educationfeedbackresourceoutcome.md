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

Represents feedback on an [educationOutcome](../resources/educationoutcome.md) object in the form of a document.

Inherits from [educationOutcome](../resources/educationoutcome.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Create educationFeedbackResourceOutcome](../api/educationfeedbackresourceoutcome-post-outcomes.md) | [educationOutcome](../resources/educationoutcome.md) | Create a new [feedback resource](../resources/educationfeedbackresourceoutcome.md) for a submission. |
| [Delete educationFeedbackResourceOutcome](../api/educationfeedbackresourceoutcome-delete.md) | None | Delete a [feedback resource](../resources/educationfeedbackresourceoutcome.md) from a submission. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|feedbackResource|[educationResource](../resources/educationresource.md)|The actual feedback resource.|
|id|String|Unique identifier for the **educationFeedbackResourceOutcome**. Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The individual who updated the resource. Inherited from [educationOutcome](../resources/educationoutcome.md).|
|lastModifiedDateTime|DateTimeOffset|The moment in time when the resource was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2021 is `2021-01-01T00:00:00Z`. Inherited from [educationOutcome](../resources/educationoutcome.md).|
|resourceStatus|educationFeedbackResourceOutcomeStatus|The status of the feedback resource. The possible values are: `notPublished`, `pendingPublish`, `published`, `failedPublish`, `unknownFutureValue`.|

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
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
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
