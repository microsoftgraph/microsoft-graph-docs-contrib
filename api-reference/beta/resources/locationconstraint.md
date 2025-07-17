---
title: "locationConstraint resource type"
description: "The conditions stated by a client for the location of a meeting."
ms.localizationpriority: medium
author: "vrod9429"
ms.subservice: "outlook"
doc_type: resourcePageType
ms.date: 03/21/2024
---

# locationConstraint resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The conditions stated by a client for the location of a meeting.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|isRequired|Boolean|The client requests the service to include in the response a meeting location for the meeting. If this is true and all the resources are busy, [findMeetingTimes](../api/user-findmeetingtimes.md) won't return any meeting time suggestions. If this is false and all the resources are busy, **findMeetingTimes** would still look for meeting times without locations. |
|locations|[locationConstraintItem](locationconstraintitem.md) collection|Constraint information for one or more locations that the client requests for the meeting.|
|suggestLocation|Boolean|The client requests the service to suggest one or more meeting locations.|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.locationConstraint"
}-->

```json
{
  "isRequired": true,
  "locations": [{"@odata.type": "microsoft.graph.locationConstraintItem"}],
  "suggestLocation": true
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "locationConstraint resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


