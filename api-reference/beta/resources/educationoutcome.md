---
title: "educationOutcome resource type"
description: "Represents a base class for the result of grading an assignment."
ms.localizationpriority: medium
author: "dipakboyed"
ms.prod: "education"
doc_type: "resourcePageType"
---

# educationOutcome resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a base class for the result of grading an assignment. The derived types are [educationFeedbackOutcome](educationfeedbackoutcome.md), [educationPointsOutcome](educationpointsoutcome.md), [educationRubricOutcome](educationrubricoutcome.md), and [educationFeedbackResourceOutcome](educationfeedbackresourceoutcome.md).

Inherits from [entity](../resources/entity.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Update educationOutcome](../api/educationoutcome-update.md) | [educationOutcome](educationoutcome.md) | Update the **educationOutcome** object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String|Unique identifier for the **educationOutcome** object. Inherited from [entity](../resources/entity.md). Read-only.|
|lastModifiedBy|[identitySet](identityset.md)|The individual who updated the resource.|
|lastModifiedDateTime|DateTimeOffset|The moment in time when the resource was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2021 is `2021-01-01T00:00:00Z`.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationOutcome",
  "keyProperty": "id"
}-->

```json
{
  "id": "String (identifier)",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "educationOutcome resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

