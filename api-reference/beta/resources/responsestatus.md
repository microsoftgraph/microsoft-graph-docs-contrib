---
title: "responseStatus resource type"
description: "The response status of a meeting request."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "outlook"
author: "iamgirishck"
ms.date: 03/21/2024
---

# responseStatus resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The response status of an attendee or organizer for a meeting request.

You can get the response status of an attendee or organizer through the **responseStatus** property of an [event](event.md) or the **status** property of an [attendee](attendee.md).

## Properties

| Property | Type           | Description |
|:---------|:---------------|:------------|
| response | String         | The response type. Possible values are: `none`, `organizer`, `tentativelyAccepted`, `accepted`, `declined`, `notResponded`.<br><br>To differentiate between `none` and `notResponded`: <br><br> `none` – from organizer's perspective. This value is used when the status of an attendee/participant is reported to the organizer of a meeting. <br><br> `notResponded` – from attendee's perspective. Indicates the attendee has not responded to the meeting request. <br><br> Clients can treat `notResponded` == `none`. <br><br> As an example, if attendee Alex hasn't responded to a meeting request, getting Alex' response status for that event in Alex' calendar returns `notResponded`. Getting Alex' response from the calendar of any other attendee or the organizer's returns `none`. Getting the organizer's response for the event in anybody's calendar also returns `none`. 
| time     | DateTimeOffset | The date and time that the response was returned. It uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

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


