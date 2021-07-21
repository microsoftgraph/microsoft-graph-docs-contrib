---
title: "responseStatus resource type"
description: "The response status of a meeting request."
localization_priority: Normal
author: "harini84"
ms.prod: "outlook"
doc_type: resourcePageType
---

# responseStatus resource type

Namespace: microsoft.graph

The response status of a meeting request.

## Properties

| Property | Type           | Description |
|:---------|:---------------|:------------|
| response | responseType   | The response type. The possible values are: `None`, `Organizer`, `TentativelyAccepted`, `Accepted`, `Declined`, `NotResponded`. <br><br>To differentiate between `None` and `NotResponded`, use an attendee, Alex, as an example. Alex hasn't responded to a meeting request (which programmatically is an [event](event.md)). An operation that returns the properties of the event, such as a [GET event](../api/event-get.md) operation, called on behalf of Alex returns `NotResponded` for Alex in the **attendees** and **responseStatus** properties. For the same event, a GET /event operation called on behalf of any other attendee or the organizer would return `None` in the **attendees** property for Alex.
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
<!-- {
  "type": "#page.annotation",
  "description": "responseStatus resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

