---
title: "responseStatus resource type"
description: "The response status of a meeting request."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: "outlook"
author: "harini84"
---

# responseStatus resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The response status of an attendee or organizer for a meeting request.

You can get the response status of an attendee or organizer through the **responseStatus** property of an [event](event.md) or the **status** property of an [attendee](attendee.md).

## Properties

| Property | Type           | Description |
|:---------|:---------------|:------------|
| response | String         | The response type. Possible values are: `none`, `organizer`, `tentativelyAccepted`, `accepted`, `declined`, `notResponded`.<br><br>To differentiate between `none` and `notResponded`: as an example, if attendee Alex hasn't responded to a meeting request, getting Alex' response status for that event in Alex' calendar returns `notResponded`. Getting Alex' response from the calendar of any other attendee or the organizer's returns `none`. Getting the organizer's response for the event in anybody's calendar also returns `none`. 
| time     | DateTimeOffset | The date and time that the response was returned. It uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.responseStatus"
}-->

```json
{
  "response": "String",
  "time": "String (timestamp)"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "responseStatus resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


