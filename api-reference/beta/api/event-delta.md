---
title: "event: delta"
description: "Get a set of events that have been added, deleted, or updated in a **calendarView** (a range of events)"
localization_priority: Normal
author: "harini84"
ms.prod: "outlook"
doc_type: apiPageType
---

# event: delta

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a set of events that have been added, deleted, or updated in all the calendars of a mailbox, a specific calendar, or within a defined **calendarView** 
(range of events defined by start and end dates) in a calendar.

The calendar can be the default calendar or some other specified calendar of the user's, or, it can be a group calendar.

A **delta** function call for events is similar to a `GET /events` or `GET /calendarview` request for
in the specified calendar, except that by appropriately applying [state tokens](/graph/delta-query-overview) in one or more of these calls,
you can query for incremental changes in that calender or specified date range. This allows you to maintain and synchronize
a local store of events in the specified calendar, without having to fetch all the events of that calendar
from the server every time.

The following table lists the differences between the **delta** function on events and the **delta** function on a **calendarView** in a calendar.

| Delta function on events  | Delta function on calendarView  |
|:--------------------------|:---------------------------------------------------------|
| Gets incremental changes of all the events in a calendar, or optionally, of the events starting from a specified date/time. | Gets incremental changes of events within the start and end date/time of the calendarView. |
| Returns only a limited set of properties for performance, client to use `GET /events/{id}` to expand any events. | Server-side expansion returns fuller set of event properties. |
| Response includes single instances and series master. | Response includes single instances, and occurrences and exceptions of recurring series. | 

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).


|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Calendars.Read, Calendars.ReadWrite    |
|Delegated (personal Microsoft account) | Calendars.Read, Calendars.ReadWrite    |
|Application | Calendars.Read, Calendars.ReadWrite |

## HTTP request

### Delta function on events in a user calendar
To get incremental changes of all the events, or of events starting from the specified date/time in the user's mailbox:
<!-- { "blockType": "ignored" } -->
```http
GET /me/events/delta 
GET /users/{id | userPrincipalName}/events/delta 

GET /me/events/delta?startDateTime={start_datetime}
GET /users/{id | userPrincipalName}/events/delta?startDateTime={start_datetime}
```

To get incremental changes of all the events, or of events starting from the specified date/time in the user's default calendar:
<!-- { "blockType": "ignored" } -->
```http
GET /me/calendar/events/delta 
GET /users/{id | userPrincipalName}/calendar/events/delta 

GET /me/calendar/events/delta?startDateTime={start_datetime} 
GET /users/{id | userPrincipalName}/calendar/events/delta?startDateTime={start_datetime}
```

To get incremental changes of all the events, or of events starting from the specified date/time in the specified user calendar:
<!-- { "blockType": "ignored" } -->
```http
GET /me/calendars/{id}/events/delta 
GET /users/{id | userPrincipalName}/calendars/{id}/events/delta 

GET /me/calendars/{id}/events/delta?startDateTime={start_datetime} 
GET /users/{id | userPrincipalName}/calendars/{id}/events/delta?startDateTime={start_datetime}
```

To get incremental changes of all the events, or of events starting from the specified date/time in the specified calendar of the default calendar group:
<!-- { "blockType": "ignored" } -->
```http
GET /me/calendargroup/calendars/{id}/events/delta 
GET /users/{id | userPrincipalName}/calendargroup/calendars/{id}/events/delta 

GET /me/calendargroup/calendars/{id}/events/delta?startDateTime={start_datetime} 
GET /users/{id | userPrincipalName}/calendargroup/calendars/{id}/events/delta?startDateTime={start_datetime}
```

To get incremental changes all the events, or of events starting from the specified date/time in the specified calendar group and calendar:
<!-- { "blockType": "ignored" } -->
```http
GET /me/calendargroups/{id}/calendars/{id}/events/delta 
GET /users/{id | userPrincipalName}/calendargroups/{id}/calendars/{id}/events/delta 

GET /me/calendargroups/{id}/calendars/{id}/events/delta?startDateTime={start_datetime} 
GET /users/{id | userPrincipalName}/calendargroups/{id}/calendars/{id}/events/delta?startDateTime={start_datetime}
```

### Delta function on events in a group calendar
To get incremental changes of all the events, or of events starting from the specified date/time in a group calendar:
<!-- { "blockType": "ignored" } -->
```http
GET /groups/{id}/events/delta
GET /groups/{id}/calendar/events/delta

GET /groups/{id}/events/delta?startDateTime={start_datetime}
GET /groups/{id}/calendar/events/delta?startDateTime={start_datetime}
```

### Delta function on a calendarView in a user calendar
To get incremental changes in a calendar view of the user's default calendar:
<!-- { "blockType": "ignored" } -->
```http
GET /me/calendarView/delta?startDateTime={start_datetime}&endDateTime={end_datetime}
GET /users/{id}/calendarView/delta?startDateTime={start_datetime}&endDateTime={end_datetime}
```

To get incremental changes in a calendar view of the specified user calendar:
<!-- { "blockType": "ignored" } -->
```http
GET /me/calendars/{id}/calendarView/delta?startDateTime={start_datetime}&endDateTime={end_datetime}
GET /users/{id}/calendars/{id}/calendarView/delta?startDateTime={start_datetime}&endDateTime={end_datetime}
```

### Delta function on a calendarView in a group calendar
To get incremental changes in a calendar view of a group's calendar:
<!-- { "blockType": "ignored" } -->
```http
GET /groups/{id}/calendarView?startDateTime={start_datetime}&endDateTime={end_datetime}
```

## Query parameters

Tracking changes in events incurs a round of one or more **delta** function calls. If you use any query parameter
(other than `$deltatoken` and `$skiptoken`), you must specify
it in the initial **delta** request. Microsoft Graph automatically encodes any specified parameters
into the token portion of the `nextLink` or `deltaLink` URL provided in the response. You only need to specify any desired query parameters once upfront.
In subsequent requests, simply copy and apply the `nextLink` or `deltaLink` URL from the previous response, as that URL already
includes the encoded, desired parameters.


| Query parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|startDateTime|String|The start date and time of the time range, represented in ISO 8601 format. For example, "2015-11-08T19:00:00.0000000".|
|endDateTime|String|The end date and time of the time range, represented in ISO 8601 format. For example, "2015-11-08T20:00:00.0000000".|
| $deltatoken | string | A [state token](/graph/delta-query-overview) returned in the `deltaLink` URL of the previous **delta** function call for the same calendar view, indicating the completion of that round of change tracking. Save and apply the entire `deltaLink` URL including this token in the first request of the next round of change tracking for that calendar view.|
| $skiptoken | string | A [state token](/graph/delta-query-overview) returned in the `nextLink` URL of the previous **delta** function call, indicating there are further changes to be tracked in the same calendar view. |

When you do a delta query on a calendar view, expect to get all the properties you'd normally get from
a `GET /calendarview` request. `$select` is not supported in this case.


## Request headers
| Name       | Type | Description |
|:---------------|:----------|:----------|
| Authorization  | string  | Bearer {token}. Required. |
| Content-Type  | string  | application/json. Required. |
| Prefer | string  | odata.maxpagesize={x}. Optional. |
| Prefer | string | {Time zone}. Optional, UTC assumed if absent.|

## Response

If successful, this method returns a `200 OK` response code and [event](../resources/event.md) collection object in the response body.

## Example
##### Request

The following example shows how to make a single **delta** function call, and limit the maximum number of events
in the response body to 2.

To track changes in a calendar view, you would make one or more **delta** function calls, with
appropriate [state tokens](/graph/delta-query-overview), to get the set of incremental changes since the last delta query.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "event_delta"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/me/calendarview/delta?startdatetime={start_datetime}&enddatetime={end_datetime}

Prefer: odata.maxpagesize=2
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/event-delta-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/event-delta-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


##### Response
If the request is successful, the response would include a state token, which is either a _skipToken_
(in an _@odata.nextLink_ response header) or a _deltaToken_ (in an _@odata.deltaLink_ response header).
Respectively, they indicate whether you should continue with the round or you have completed
getting all the changes for that round.

The response below shows a _skipToken_ in an _@odata.nextLink_ response header.

Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.event",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 359

{
  "@odata.nextLink":"https://graph.microsoft.com/beta/me/calendarview/delta?$skiptoken={_skipToken_}",
  "value": [
    {
      "originalStartTimeZone": "originalStartTimeZone-value",
      "originalEndTimeZone": "originalEndTimeZone-value",
      "responseStatus": {
        "response": "response-value",
        "time": "datetime-value"
      },
      "uid": "iCalUId-value",
      "reminderMinutesBeforeStart": 99,
      "isReminderOn": true
    }
  ]
}
```

### See also

- [Microsoft Graph delta query](/graph/delta-query-overview)
- [Get incremental changes to events in a folder](/graph/delta-query-events)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "event: delta",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
