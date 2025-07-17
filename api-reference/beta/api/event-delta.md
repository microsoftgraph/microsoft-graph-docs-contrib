---
title: "event: delta"
description: "Get a set of events that are added, deleted, or updated in a **calendarView** (a range of events)"
ms.localizationpriority: medium
author: "iamgirishck"
ms.subservice: "outlook"
doc_type: apiPageType
ms.date: 06/22/2024
---

# event: delta

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a set of [event](../resources/event.md) resources that are added, deleted, or updated in one or more calendars.

You can get specific types of these incremental changes in the events in all the calendars of a mailbox or in a specific calendar, or in an event collection of a **calendarView** (range of events defined by start and end dates) of a calendar. The calendar can be the default calendar or some other specified calendar that belongs to the user. When getting incremental changes on **calendarView**, the calendar can be a group calendar as well.

Typically, synchronizing events in a calendar or **calendarView** in a local store entails a round of multiple **delta** function calls. The initial call is a full synchronization, and every subsequent **delta** call in the same round gets the incremental changes (additions, deletions, or updates). Using deltas allows you to incrementally maintain and synchronize a local store of events in the specified calendar.

The following table lists the differences between the **delta** function on events and the **delta** function on a **calendarView** in a calendar.

| Delta function on events  | Delta function on calendarView  |
|:--------------------------|:---------------------------------------------------------|
| Gets incremental changes of all the events in a calendar not bounded by a start and end date range. Alternatively, you can get incremental changes of the events in a calendar bounded by a start time, starting on or after that date/time. | Gets incremental changes of events within the start and end date/time of the **calendarView**. |
| Returns only a limited set of **event** properties for performance reasons. Client to later use `GET /events/{id}` to expand any events. | Server-side expansion returns a fuller set of **event** properties. |
| Response includes single instances and recurring series master. | Response includes single instances, and occurrences and exceptions of recurring series. |
| Applies to events in user calendars but not group calendars. | Applies to events in user and group calendars. |
| Currently available only in the beta version. | Available in the v1.0 and beta versions. |

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "event_delta" } -->
[!INCLUDE [permissions-table](../includes/permissions/event-delta-permissions.md)]

## HTTP request

This section shows the HTTP request syntax for the initial **delta** function call to start a full synchronization that retrieves all the events in the specified calendar or calendar view. This syntax doesn't contain any [state tokens](/graph/delta-query-overview#state-tokens).

The query URL returned in a `@odata.nextLink` or `@odata.deltaLink` of a successful response includes a state token. For any subsequent **delta** function call, use the query URL in a `@odata.nextLink` or `@odata.deltaLink` preceding it.

### Delta function on events in a user calendar (preview)
Apply the **delta** function on all the events or events starting on or after a specific date/time, in the specified user calendar or calendars:

* To get incremental changes of all the events, or of events starting on or after the specified date/time _in the user's mailbox_:
  <!-- { "blockType": "ignored" } -->
  ```http
  GET /me/events/delta
  GET /users/{id | userPrincipalName}/events/delta

  GET /me/events/delta?startDateTime={start_datetime}
  GET /users/{id | userPrincipalName}/events/delta?startDateTime={start_datetime}
  ```

* To get incremental changes of all the events, or of events starting on or after the specified date/time _in the user's default calendar_:
  <!-- { "blockType": "ignored" } -->
  ```http
  GET /me/calendar/events/delta
  GET /users/{id | userPrincipalName}/calendar/events/delta

  GET /me/calendar/events/delta?startDateTime={start_datetime}
  GET /users/{id | userPrincipalName}/calendar/events/delta?startDateTime={start_datetime}
  ```

* To get incremental changes of all the events, or of events starting on or after the specified date/time _in the specified user calendar_:
  <!-- { "blockType": "ignored" } -->
  ```http
  GET /me/calendars/{id}/events/delta
  GET /users/{id | userPrincipalName}/calendars/{id}/events/delta

  GET /me/calendars/{id}/events/delta?startDateTime={start_datetime}
  GET /users/{id | userPrincipalName}/calendars/{id}/events/delta?startDateTime={start_datetime}
  ```

* To get incremental changes all the events, or of events starting on or after the specified date/time _in the specified calendar group and calendar_:
  <!-- { "blockType": "ignored" } -->
  ```http
  GET /me/calendarGroups/{id}/calendars/{id}/events/delta
  GET /users/{id | userPrincipalName}/calendarGroups/{id}/calendars/{id}/events/delta

  GET /me/calendarGroups/{id}/calendars/{id}/events/delta?startDateTime={start_datetime}
  GET /users/{id | userPrincipalName}/calendarGroups/{id}/calendars/{id}/events/delta?startDateTime={start_datetime}
  ```

<!-- Add back and fix html when group calendars are supported

### Delta function on events in a group calendar (preview)
* To get incremental changes of all the events, or of events starting on or after the specified date/time _in a group calendar_:
  !-- { "blockType": "ignored" } --
  ```http
  GET /groups/{id}/events/delta
  GET /groups/{id}/calendar/events/delta

  GET /groups/{id}/events/delta?startDateTime={start_datetime}
  GET /groups/{id}/calendar/events/delta?startDateTime={start_datetime}
  ```

  -->

### Delta function on calendarView in a user calendar
Apply the **delta** function on a range of events delimited by start and end date/times, in the specified user calendar:

* To get incremental changes in a calendar view of _the user's default calendar_:
  <!-- { "blockType": "ignored" } -->
  ```http
  GET /me/calendarView/delta?startDateTime={start_datetime}&endDateTime={end_datetime}
  GET /users/{id}/calendarView/delta?startDateTime={start_datetime}&endDateTime={end_datetime}
  ```

* To get incremental changes in a calendar view of _the specified user calendar_:
  <!-- { "blockType": "ignored" } -->
  ```http
  GET /me/calendars/{id}/calendarView/delta?startDateTime={start_datetime}&endDateTime={end_datetime}
  GET /users/{id}/calendars/{id}/calendarView/delta?startDateTime={start_datetime}&endDateTime={end_datetime}
  ```

### Delta function on calendarView in a group calendar
* To get incremental changes in a calendar view of _a group's calendar_:
  <!-- { "blockType": "ignored" } -->
  ```http
  GET /groups/{id}/calendarView?startDateTime={start_datetime}&endDateTime={end_datetime}
  ```

## Query parameters

Tracking changes incurs a round of one or more **delta** function calls. If you use any query parameter
(other than `$deltatoken` and `$skiptoken`), you must specify
it in the initial **delta** request. Microsoft Graph automatically encodes any specified parameters
into the token portion of the `@odata.nextLink` or `@odata.deltaLink` URL provided in the response. You only need to specify any desired query parameters once upfront.
In subsequent requests, copy and apply the `@odata.nextLink` or `@odata.deltaLink` URL from the previous response, as that URL already
includes the encoded, desired parameters.

| Query parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|startDateTime|String|The start date and time of the time range, represented in ISO 8601 format. For example, "2019-11-08T19:00:00-08:00". <br>The timezone is specified in the timezone offset portion of the parameter value, and isn't impacted by the `Prefer: outlook.timezone` header if present. If no timezone offset is included in the value, it's interpreted as UTC.<br>Optional for **delta** on events in a calendar. <br>Required for **delta** on **calendarView**. |
|endDateTime|String|The end date and time of the time range, represented in ISO 8601 format. For example, "2019-11-08T20:00:00-08:00". <br>The timezone is specified in the timezone offset portion of the parameter value, and isn't affected by the `Prefer: outlook.timezone` header, if present. If no timezone offset is included in the value, it's interpreted as UTC.<br>_Not supported_ by **delta** on events in a calendar. <br>Required for **delta** on **calendarView**.|
| $deltatoken | string | A [state token](/graph/delta-query-overview) returned in the `@odata.deltaLink` URL of the previous **delta** function call for the same calendar view, indicating the completion of that round of change tracking. Save and apply the entire `@odata.deltaLink` URL including this token in the first request of the next round of change tracking for that calendar view.|
| $skiptoken | string | A [state token](/graph/delta-query-overview) returned in the `@odata.nextLink` URL of the previous **delta** function call, indicating there are further changes to be tracked in the same calendar view. |

### OData query parameters
- Expect a **delta** function call on a **calendarView** to return the same properties you'd normally get from a `GET /calendarView` request. You can't use `$select` to get only a subset of those properties.

- The **delta** function doesn't support the following query parameters for events in a user calendar, or events in a **calendarView**: `$expand`, `$filter`,`$orderby`, `$search`, and `$select`.



## Request headers
| Name       | Type | Description |
|:---------------|:----------|:----------|
| Authorization  | string  |Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | string  | application/json. Required. |
| Prefer | string  | odata.maxpagesize={x}. Optional. |
| Prefer | string | outlook.timezone={Time zone string}. Optional, UTC assumed if absent.|

## Response

### Delta function on events (preview)
If successful, this method returns a `200 OK` response code and an [event](../resources/event.md) collection in the response body. Each **event** in the response contains only
the **id**, **type**, **start**, and **end** properties for performance reasons. Use `GET /events/{id}` later to expand any events from the response.

### Delta function on calendarView
If successful, this method returns a `200 OK` response code and an [event](../resources/event.md) collection in the response body.

Expect to get all the properties you'd normally get from a `GET /calendarView` request.

Within a round of **delta** function calls bound by the date range of a **calendarView**, you can sometimes find a **delta** call returning two types of events under `@removed` with the reason `deleted`:
- Events that are within the date range and that were deleted since the previous **delta** call.
- Events that are _outside_ the date range and that were added, deleted, or updated since the previous **delta** call.

Filter the events under `@removed` for the date range that your scenario requires.

## Examples

### Example 1: Delta function on events in a calendar (preview)
#### Request
The following example shows the initial sync request to get events in the signed-in user's default calendar, which occur on or after the specified `startDateTime` parameter. The initial request doesn't include any state token.

The request uses the `Prefer: odata.maxpagesize` header to limit the maximum number of events in each response to 1.
Continue calling the `delta` function by using the query returned in `@odata.nextLink` until you get a `@odata.deltaLink` in the response.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "event_delta_events"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/me/calendar/events/delta?startDateTime=2020-06-12T00:00:00Z

Prefer: odata.maxpagesize=1
```

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/event-delta-events-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/event-delta-events-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

If the request is successful, the response includes a state token, which is either a _skipToken_
(in an _\@odata.nextLink_ response header) or a _deltaToken_ (in an _\@odata.deltaLink_ response header).
Respectively, they indicate whether you should continue with the round or you have completed
getting all the changes for that round.

The response below shows a _skipToken_ in an _\@odata.nextLink_ response header.

<!-- {
  "blockType": "response",
  "name": "event_delta_events",
  "truncated": true,
  "@odata.type": "microsoft.graph.event",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.nextLink":"https://graph.microsoft.com/beta/me/calendar/events/delta?$skiptoken=R0usmcdvmMu7jxWP8",
  "value": [
    {
      "id": " AAMkADllMWMwNDkzLWJlY2EtNDIyOS1iZjAA=",
      "type": "singleInstance",
      "start": {
             "DateTime": "2020-02-19T10:00:00.0000000", 
             "TimeZone": "UTC"
         }, 
       "end": {
                "DateTime": "2020-02-19T11:00:00.0000000", 
                "TimeZone": "UTC"      
          } 
        }
  ]
}
```


### Example 2: Delta function on calendarView
#### Request

The following example shows the initial sync request to get events in the specified calendar of the signed-in user, within the range of dates indicated by the **calendarView**. The initial request doesn't include any state token.

The request uses the `Prefer: odata.maxpagesize` header to limit the maximum number of events in each response to 2. Continue calling the `delta` function by using the query returned in `@odata.nextLink` until you get all the events in that calendar view, and a `@odata.deltaLink`
in the response.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["AAMkADI5M1BbeAAA="],
  "name": "event_delta_calendarview"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/me/calendars/AAMkADI5M1BbeAAA=/calendarView/delta?startDateTime=2020-06-01T00:00:00Z&endDateTime=2020-06-10T00:00:00Z

Prefer: odata.maxpagesize=2
```

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/event-delta-calendarview-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/event-delta-calendarview-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

If the request is successful, the response includes a state token, which is either a _skipToken_
(in an _\@odata.nextLink_ response header) or a _deltaToken_ (in an _\@odata.deltaLink_ response header).
Respectively, they indicate whether you should continue with the round or you have completed
getting all the changes for that round.

The following response shows a _skipToken_ in an _\@odata.nextLink_ response header.

Note: The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "name": "event_delta_calendarview",
  "truncated": true,
  "@odata.type": "microsoft.graph.event",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(event)",
    "@odata.nextLink": "https://graph.microsoft.com/beta/me/calendars/AAMkADI5M1BbeAAA=/calendarView/delta?$skiptoken=R0usmcdvmMu7jxWP8",
    "value": [
        {
            "@odata.type": "#microsoft.graph.event",
            "@odata.etag": "W/\"Jdsb3FEkPk2qoUHCdliYowACwixTgw==\"",
            "createdDateTime": "2020-06-16T04:05:43.8668791Z",
            "lastModifiedDateTime": "2020-06-16T04:08:27.354268Z",
            "changeKey": "Jdsb3FEkPk2qoUHCdliYowACwixTgw==",
            "categories": [],
            "transactionId": null,
            "originalStartTimeZone": "Pacific Standard Time",
            "originalEndTimeZone": "Pacific Standard Time",
            "uid": "040000008200E00074C5B7101A82E00800000000F088B8B95843D601000000000000000010000000165CD5547CFC9545B6492B261750B48C",
            "reminderMinutesBeforeStart": 15,
            "isReminderOn": false,
            "hasAttachments": false,
            "subject": "Summer party",
            "bodyPreview": "",
            "importance": "normal",
            "sensitivity": "normal",
            "isAllDay": false,
            "isCancelled": false,
            "isOrganizer": true,
            "IsRoomRequested": false,
            "AutoRoomBookingStatus": "None",
            "responseRequested": true,
            "seriesMasterId": null,
            "showAs": "busy",
            "type": "singleInstance",
            "webLink": "https://outlook.office365.com/owa/?itemid=AAMkADI5MAAKkeE1QAAA%3D&exvsurl=1&path=/calendar/item",
            "onlineMeetingUrl": null,
            "isOnlineMeeting": false,
            "onlineMeetingProvider": "unknown",
            "allowNewTimeProposals": true,
            "OccurrenceId": null,
            "isDraft": false,
            "recurrence": null,
            "AutoRoomBookingOptions": null,
            "onlineMeeting": null,
            "id": "AAMkADI5MAAKkeE1QAAA=",
            "responseStatus": {
                "response": "none",
                "time": "0001-01-01T00:00:00Z"
            },
            "body": {
                "contentType": "html",
                "content": "<html>\r\n<head></head>\r\n<body lang=\"EN-US\" link=\"#0563C1\" vlink=\"#954F72\" style=\"\">\r\n<div class=\"WordSection1\">\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n</div>\r\n</body>\r\n</html>\r\n"
            },
            "start": {
                "dateTime": "2020-06-02T20:00:00.0000000",
                "timeZone": "UTC"
            },
            "end": {
                "dateTime": "2020-06-02T22:30:00.0000000",
                "timeZone": "UTC"
            },
            "location": {
                "displayName": "",
                "locationType": "default",
                "uniqueIdType": "unknown",
                "address": {
                    "type": "unknown"
                },
                "coordinates": {}
            },
            "locations": [],
            "attendees": [
                {
                    "type": "required",
                    "status": {
                        "response": "none",
                        "time": "0001-01-01T00:00:00Z"
                    },
                    "emailAddress": {
                        "name": "Samantha Booth",
                        "address": "samanthab@contoso.com"
                    }
                }
            ],
            "organizer": {
                "emailAddress": {
                    "name": "Samantha Booth",
                    "address": "samanthab@contoso.com"
                }
            }
        },
        {
            "@odata.type": "#microsoft.graph.event",
            "@odata.etag": "W/\"Jdsb3FEkPk2qoUHCdliYowACwixTfw==\"",
            "createdDateTime": "2020-06-16T04:06:18.386713Z",
            "lastModifiedDateTime": "2020-06-16T04:08:19.5694048Z",
            "changeKey": "Jdsb3FEkPk2qoUHCdliYowACwixTfw==",
            "categories": [],
            "transactionId": null,
            "originalStartTimeZone": "Pacific Standard Time",
            "originalEndTimeZone": "Pacific Standard Time",
            "uid": "040000008200E00074C5B7101A82E0080000000060074BC55843D6010000000000000000100000002D33A89F36B10D43A12FD990B62858B2",
            "reminderMinutesBeforeStart": 15,
            "isReminderOn": true,
            "hasAttachments": false,
            "subject": "Summer party part 2",
            "bodyPreview": "",
            "importance": "normal",
            "sensitivity": "normal",
            "isAllDay": false,
            "isCancelled": false,
            "isOrganizer": true,
            "IsRoomRequested": false,
            "AutoRoomBookingStatus": "None",
            "responseRequested": true,
            "seriesMasterId": null,
            "showAs": "busy",
            "type": "singleInstance",
            "webLink": "https://outlook.office365.com/owa/?itemid=AAMkADI5MAAKkeE1RAAA%3D&exvsurl=1&path=/calendar/item",
            "onlineMeetingUrl": null,
            "isOnlineMeeting": false,
            "onlineMeetingProvider": "unknown",
            "allowNewTimeProposals": true,
            "OccurrenceId": null,
            "isDraft": false,
            "recurrence": null,
            "AutoRoomBookingOptions": null,
            "onlineMeeting": null,
            "id": "AAMkADI5MAAKkeE1RAAA=",
            "responseStatus": {
                "response": "none",
                "time": "0001-01-01T00:00:00Z"
            },
            "body": {
                "contentType": "html",
                "content": "<html>\r\n<head></head>\r\n<body lang=\"EN-US\" link=\"#0563C1\" vlink=\"#954F72\" style=\"\">\r\n<div class=\"WordSection1\">\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n</div>\r\n</body>\r\n</html>\r\n"
            },
            "start": {
                "dateTime": "2020-06-04T19:30:00.0000000",
                "timeZone": "UTC"
            },
            "end": {
                "dateTime": "2020-06-04T22:30:00.0000000",
                "timeZone": "UTC"
            },
            "location": {
                "displayName": "",
                "locationType": "default",
                "uniqueIdType": "unknown",
                "address": {
                    "type": "unknown"
                },
                "coordinates": {}
            },
            "locations": [],
            "attendees": [
                {
                    "type": "required",
                    "status": {
                        "response": "none",
                        "time": "0001-01-01T00:00:00Z"
                    },
                    "emailAddress": {
                        "name": "Samantha Booth",
                        "address": "samanthab@contoso.com"
                    }
                }
            ],
            "organizer": {
                "emailAddress": {
                    "name": "Samantha Booth",
                    "address": "samanthab@contoso.com"
                }
            }
        }
    ]
}
```

## Related content

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


