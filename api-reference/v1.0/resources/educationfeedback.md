---
title: "educationFeedback resource type"
description: "Feedback from a teacher to a student."
author: "mmast-msft"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
ms.date: 08/08/2024
---

# educationFeedback resource type

Namespace: microsoft.graph

Feedback from a teacher to a student. 

This property represents both the text part of the feedback along with who provided the feedback.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|feedbackBy|[identitySet](identityset.md)|User who created the feedback.|
|feedbackDateTime|DateTimeOffset|Moment in time when the feedback was given. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|text|[itemBody](itembody.md)|Feedback.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationFeedback"
}-->

```json
{
  "feedbackBy": {"@odata.type": "microsoft.graph.identitySet"},
  "feedbackDateTime": "String",
  "text": {"@odata.type": "microsoft.graph.itemBody"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "educationFeedback resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


