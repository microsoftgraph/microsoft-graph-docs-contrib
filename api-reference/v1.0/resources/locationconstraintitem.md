---
title: "locationConstraintItem resource type"
description: "locationConstraintItem - The conditions stated by a client for the location of a meeting."
ms.localizationpriority: medium
author: "iamgirishck"
ms.subservice: outlook
doc_type: resourcePageType
ms.date: 04/03/2024
---

# locationConstraintItem resource type

Namespace: microsoft.graph

The conditions stated by a client for the location of a meeting.

Derived from [location](location.md).

## JSON representation

The following JSON representation shows the resource type.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "baseType": "microsoft.graph.location",
  "@odata.type": "microsoft.graph.locationConstraintItem"
}-->

```json
{
  "resolveAvailability": true,
  "address": {"@odata.type": "microsoft.graph.physicalAddress"},
  "displayName": "string",
  "locationEmailAddress": "string"
}

```
## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| address | [physicalAddress](physicaladdress.md) |The street address of the location. |
| displayName  | String | The name associated with the location.                       |
| locationEmailAddress | String | Optional email address of the location. |
| resolveAvailability | Boolean | If set to true and the specified resource is busy, [findMeetingTimes](../api/user-findmeetingtimes.md) looks for another resource that is free. If set to false and the specified resource is busy, **findMeetingTimes** returns the resource best ranked in the user's cache without checking if it's free. Default is true. |

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "locationConstraintItem resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

