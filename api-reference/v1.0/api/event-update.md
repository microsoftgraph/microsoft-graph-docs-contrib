---
title: "Update event"
description: "Update the properties of the event object."
author: "iamgirishck"
ms.localizationpriority: high
ms.prod: "outlook"
doc_type: apiPageType
---

# Update event

Namespace: microsoft.graph

Update the properties of the [event](../resources/event.md) object.

<!-- markdownlint-disable MD001 -->
### Notes for updating specific properties

Note the following behaviors or recommendations when updating the corresponding properties:

- **attendees** property and meeting updates
  - An event update that includes only the **attendees** property in the request body sends a meeting update to only the attendees that have changed.
  - An event update that removes an attendee specified as a member of a distribution list sends a meeting update to all the attendees.

- **body** property and online meetings

  Before updating the body of an event that has been set up as an online meeting, be sure to first get the **body** property, apply the appropriate changes to the content, and preserve the meeting blob for online meeting. Inadvertently removing the meeting blob from the body would disable meeting online.

- **end** and **start** properties and their time zones

  When updating the time zone of the start or end time of an event, first [find the supported time zones](outlookuser-supportedtimezones.md) to make sure you set only time zones that have been configured for the user's mailbox server.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:------------------------------------|
| Delegated (work or school account)     | Calendars.ReadWrite                 |
| Delegated (personal Microsoft account) | Calendars.ReadWrite                 |
| Application                            | Calendars.ReadWrite                 |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /me/events/{id}
PATCH /users/{id | userPrincipalName}/events/{id}
PATCH /groups/{id}/events/{id}

PATCH /me/calendar/events/{id}
PATCH /users/{id | userPrincipalName}/calendar/events/{id}
PATCH /groups/{id}/calendar/events/{id}

PATCH /me/calendars/{id}/events/{id}
PATCH /users/{id | userPrincipalName}/calendars/{id}/events/{id}

PATCH /me/calendarGroups/{id}/calendars/{id}/events/{id}
PATCH /users/{id | userPrincipalName}/calendarGroups/{id}/calendars/{id}/events/{id}
```

## Request headers

| Name          | Type   | Description               |
|:--------------|:-------|:--------------------------|
| Authorization | string | Bearer {token}. Required. |

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

| Property                   | Type                                                       | Description |
|:---------------------------|:-----------------------------------------------------------|:----|
| attendees                  | [Attendee](../resources/attendee.md)                       | The collection of attendees for the event. |
| body                       | [ItemBody](../resources/itembody.md)                       | The body of the message associated with the event. |
| categories                 | String collection                                          | The categories associated with the event. |
| end                        | DateTimeTimeZone                                           | The date, time, and time zone that the event ends. |
| hideAttendees              | Boolean                                                    | When set to `true`, each attendee only sees themselves in the meeting request and meeting **Tracking** list. Default is false. |
| importance                 | String                                                     | The importance of the event. The possible values are: `low`, `normal`, `high`. |
| isAllDay                   | Boolean                                                    | Set to true if the event lasts all day. |
| isOnlineMeeting            | Boolean                                                    | `True` if this event has online meeting information, `false` otherwise. Default is false. Optional. |
| isReminderOn               | Boolean                                                    | Set to true if an alert is set to remind the user of the event. |
| location                   | [Location](../resources/location.md)                       | The location of the event. |
| locations                  | [location](../resources/location.md) collection            | The locations where the event is held or attended from. The **location** and **locations** properties always correspond with each other. If you update the **location** property, any prior locations in the **locations** collection would be removed and replaced by the new **location** value. |
| onlineMeetingProvider      | onlineMeetingProviderType                                  | Represents the online meeting service provider. The possible values are `teamsForBusiness`, `skypeForBusiness`, and `skypeForConsumer`. Optional. |
| recurrence                 | [PatternedRecurrence](../resources/patternedrecurrence.md) | The recurrence pattern for the event. |
| reminderMinutesBeforeStart | Int32                                                      | The number of minutes before the event start time that the reminder alert occurs. |
| responseRequested          | Boolean                                                    | Set to true if the sender would like a response when the event is accepted or declined. |
| sensitivity                | String                                                     | The possible values are: `normal`, `personal`, `private`, `confidential`. |
| showAs                     | String                                                     | The status to show. The possible values are: `free`, `tentative`, `busy`, `oof`, `workingElsewhere`, `unknown`. |
| start                      | DateTimeTimeZone                                           | The start date, time, and time zone of the event. |
| subject                    | String                                                     | The text of the event's subject line. |

Because the **event** resource supports [extensions](/graph/extensibility-overview), you can use the `PATCH` operation to
add, update, or delete your own app-specific data in custom properties of an extension in an existing **event** instance.

If the **event** you're updating is the master event of a recurring series, contains multiple attendees, and has instances that have been updated separately, multiple notification emails will be sent out: one for the master series and one per instance that has been updated.

## Response

If successful, this method returns a `200 OK` response code and updated [event](../resources/event.md) object in the response body.

>**Note:** This method can return an HTTP 400 Bad Request response with an error code of `ErrorOccurrenceCrossingBoundary` and the following error message: Modified occurrence is crossing or overlapping adjacent occurrence. This indicates that the update violates the following Outlook restriction on recurrence exceptions: an occurrence cannot be moved to or before the day of the previous occurrence, and cannot be moved to or after the day of the following occurrence.

## Example

##### Request

Here is an example of the request.

<!-- markdownlint-disable MD025 -->
# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "update_event"
}-->

```http
PATCH https://graph.microsoft.com/v1.0/me/events/{id}
Content-type: application/json

{
  "originalStartTimeZone": "originalStartTimeZone-value",
  "originalEndTimeZone": "originalEndTimeZone-value",
  "responseStatus": {
    "response": "",
    "time": "datetime-value"
  },
  "recurrence": null,
  "reminderMinutesBeforeStart": 99,
  "isOnlineMeeting": true,
  "onlineMeetingProvider": "teamsForBusiness",
  "isReminderOn": true,
  "hideAttendees": false,
  "categories": ["Red category"]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-event-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-event-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-event-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-event-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-event-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-event-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

<!-- markdownlint-disable MD024 -->

##### Response

Here is an example of the response. Note: The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.event"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "originalStartTimeZone": "originalStartTimeZone-value",
  "originalEndTimeZone": "originalEndTimeZone-value",
  "responseStatus": {
    "response": "",
    "time": "datetime-value"
  },
  "recurrence": null,
  "reminderMinutesBeforeStart": 99,
  "isOnlineMeeting": true,
  "onlineMeetingProvider": "teamsForBusiness",
  "isReminderOn": true,
  "hideAttendees": false,
  "onlineMeeting": {
        "joinUrl": "https://teams.microsoft.com/l/meetup-join/19%3ameeting_NzIyNzhlMGEtM2YyZC00ZmY0LTlhNzUtZmZjNWFmZGNlNzE2%40thread.v2/0?context=%7b%22Tid%22%3a%2272f988bf-86f1-41af-91ab-2d7cd011db47%22%2c%22Oid%22%3a%22bc55b173-cff6-457d-b7a1-64bda7d7581a%22%7d",
        "conferenceId": "177513992",
        "tollNumber": "+91 22 6241 6885"
  }
}
```

## See also

- [Add custom data to resources using extensions](/graph/extensibility-overview)
- [Add custom data to users using open extensions](/graph/extensibility-open-users)
- [Add custom data to groups using schema extensions](/graph/extensibility-schema-groups)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update event",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->
