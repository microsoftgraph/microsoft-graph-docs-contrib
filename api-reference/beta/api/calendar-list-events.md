---
title: "List events"
description: "Retrieve a list of events in a calendar.  The list contains single instance meetings and series masters."
author: "iamgirishck"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
ms.date: 06/22/2024
---

# List events

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of events in a calendar.  The calendar can be one for a [user](../resources/user.md), or the default calendar of a Microsoft 365 [group](../resources/group.md). The list of events contains single instance meetings and series masters.

To get expanded event instances, you can [get the calendar view](calendar-list-calendarview.md), or
[get the instances of an event](event-list-instances.md).

> [!NOTE]
> If your target mailbox calendar contains any private items, the caller must either:
>  * Be granted `FullAccess` mailbox permissions over the target mailbox (via the [Add-MailboxPermission](/powershell/module/exchange/add-mailboxpermission) cmdlet).
>  * Be granted the `Delegate` + `CanViewPrivateItems` flags (similar to the previous option, but through the [Add-MailboxFolderPermission](/powershell/module/exchange/add-mailboxfolderpermission) cmdlet). This option routes all meeting requests to the delegate mailbox. For a workaround, see [SharingPermissionFlags](/powershell/module/exchange/add-mailboxfolderpermission?view=exchange-ps#-sharingpermissionflags).
>
> Failure to meet these conditions will result in a `The specified object was not found in the store` response.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Depending on the type of calendar that the events are in and the permission type (delegated or application) requested, one of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Calendar | Delegated (work or school account) | Delegated (personal Microsoft account) | Application |
|:-----|:-----|:-----|:-----|
| user calendar | Calendars.ReadBasic, Calendars.Read, Calendars.ReadWrite | Calendars.ReadBasic, Calendars.Read, Calendars.ReadWrite | Calendars.ReadBasic, Calendars.Read, Calendars.ReadWrite |
| group calendar | Group.Read.All, Group.ReadWrite.All | Not supported. | Not supported. |


## HTTP request
<!-- { "blockType": "ignored" } -->
A user's or group's default [calendar](../resources/calendar.md).
```http
GET /me/calendar/events
GET /users/{id | userPrincipalName}/calendar/events
GET /groups/{id}/calendar/events
```
A user's [calendar](../resources/calendar.md) in the default [calendarGroup](../resources/calendargroup.md).
```http
GET /me/calendars/{id}/events
GET /users/{id | userPrincipalName}/calendars/{id}/events
```
A user's [calendar](../resources/calendar.md) in a specific [calendarGroup](../resources/calendargroup.md).
```http
GET /me/calendarGroups/{id}/calendars/{id}/events
GET /users/{id | userPrincipalName}/calendarGroups/{id}/calendars/{id}/events
```
## Optional query parameters
This method supports the [OData Query Parameters](/graph/query-parameters) to help customize the response.
## Request headers
| Name       | Type | Description |
|:---------------|:--------|:--------|
| Authorization  | string |Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Prefer: outlook.timezone  | string | Use this to specify the time zone for start and end times in the response. If not specified, those time values are returned in UTC. Optional. |

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and collection of [Event](../resources/event.md) objects in the response body.

## Example

### Example 1: List calendar events

##### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "calendar_list_events_for_me"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/me/calendar/events
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/calendar-list-events-for-me-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/calendar-list-events-for-me-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/calendar-list-events-for-me-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/calendar-list-events-for-me-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/calendar-list-events-for-me-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/calendar-list-events-for-me-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/calendar-list-events-for-me-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/calendar-list-events-for-me-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

##### Response

The following example shows the response. Note: The response object shown here might be shortened for readability.

<!--
{
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.event",
  "isCollection": true
}
-->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "originalStartTimeZone": "originalStartTimeZone-value",
      "originalEndTimeZone": "originalEndTimeZone-value",
      "responseStatus": {
        "response": "",
        "time": "2016-10-19T10:37:00Z"
      },
      "uid": "iCalUId-value",
      "reminderMinutesBeforeStart": 99,
      "isReminderOn": true
    }
  ]
}
```
##### Response

The following example shows the response. Note: The response object shown here might be shortened for readability.
<!--
{
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.event",
  "isCollection": true
}
-->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "originalStartTimeZone": "originalStartTimeZone-value",
      "originalEndTimeZone": "originalEndTimeZone-value",
      "responseStatus": {
        "response": "",
        "time": "datetime-value"
      },
      "iCalUId": "iCalUId-value",
      "reminderMinutesBeforeStart": 99,
      "isReminderOn": true
    }
  ]
}
```

### Example 2: Get events by filtering on the subject property

This example gets events in the user's primary calendar by filtering on their subject starting with "All".

#### Request

The following example shows the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "calendar_list_events_for_me_by_subject"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/me/calendar/events?$filter=startsWith(subject,'All')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/calendar-list-events-for-me-by-subject-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/calendar-list-events-for-me-by-subject-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/calendar-list-events-for-me-by-subject-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/calendar-list-events-for-me-by-subject-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/calendar-list-events-for-me-by-subject-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/calendar-list-events-for-me-by-subject-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/calendar-list-events-for-me-by-subject-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/calendar-list-events-for-me-by-subject-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response. Note: The response object shown here might be shortened for readability.
<!--
{
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.event",
  "isCollection": true
}
-->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('458d4c95-124e-49da-ba9d-1dd0387e682e')/calendar/events",
    "value": [
        {
            "@odata.etag": "W/\"73p1z1T9xUKc8HVNwAwcvgAAR5r+mw==\"",
            "id": "AAMkADBmYTFkMzUyLTgxODQtNDA0YS05YzdlLWRkYjJlY2U4NTljZgBGAAAAAACdCqnIfBTiS7nPzH--j6RvBwDvenXPVP3FQpzwdU3ADBy_AAAAAAENAADvenXPVP3FQpzwdU3ADBy_AABH5Vj3AAA=",
            "createdDateTime": "2021-09-13T13:08:27.8871578Z",
            "lastModifiedDateTime": "2021-09-14T15:14:24.624932Z",
            "changeKey": "73p1z1T9xUKc8HVNwAwcvgAAR5r+mw==",
            "categories": [],
            "transactionId": "f9a93e83-2e8f-a9aa-29af-17b4fe87e221",
            "originalStartTimeZone": "India Standard Time",
            "originalEndTimeZone": "India Standard Time",
            "uid": "040000008200E00074C5B7101A82E008000000001EC43E71A0A8D7010000000000000000100000003FE75E1BE3F09B43BCF2C0EF408DD567",
            "reminderMinutesBeforeStart": 15,
            "isReminderOn": true,
            "hasAttachments": false,
            "subject": "All APIs Testing",
            "bodyPreview": "Microsoft Teams meeting",
            "importance": "normal",
            "sensitivity": "normal",
            "isAllDay": false,
            "isCancelled": false,
            "isOrganizer": true,
            "responseRequested": true,
            "seriesMasterId": null,
            "showAs": "busy",
            "type": "singleInstance",
            "webLink": "https://outlook.office365.com/owa/?itemid=AAMkADBmYTFkMzUyLTgxODQtNDA0YS05YzdlLWRkYjJlY2U4NTljZgBGAAAAAACdCqnIfBTiS7nPzH%2F%2Fj6RvBwDvenXPVP3FQpzwdU3ADBy%2BAAAAAAENAADvenXPVP3FQpzwdU3ADBy%2BAABH5Vj3AAA%3D&exvsurl=1&path=/calendar/item",
            "onlineMeetingUrl": null,
            "isOnlineMeeting": true,
            "onlineMeetingProvider": "teamsForBusiness",
            "allowNewTimeProposals": true,
            "occurrenceId": null,
            "isDraft": false,
            "hideAttendees": false,
            "recurrence": null,
            "responseStatus": {
                "response": "organizer",
                "time": "0001-01-01T00:00:00Z"
            },
            "body": {
                "contentType": "html",
                "content": "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"><meta content=\"text/html; charset=us-ascii\"></head><body><br>Microsoft Teams meeting</body></html>"
            },
            "start": {
                "dateTime": "2021-09-14T08:00:00.0000000",
                "timeZone": "UTC"
            },
            "end": {
                "dateTime": "2021-09-14T08:30:00.0000000",
                "timeZone": "UTC"
            },
            "location": {
                "displayName": "Singapore",
                "locationType": "default",
                "uniqueId": "79e60b5c-bf7e-4811-b314-6eb7f270ec21",
                "uniqueIdType": "locationStore"
            },
            "locations": [
                {
                    "displayName": "Singapore",
                    "locationType": "default",
                    "uniqueId": "79e60b5c-bf7e-4811-b314-6eb7f270ec21",
                    "uniqueIdType": "locationStore"
                }
            ],
            "attendees": [
                {
                    "type": "required",
                    "status": {
                        "response": "none",
                        "time": "0001-01-01T00:00:00Z"
                    },
                    "emailAddress": {
                        "name": "admin@contoso.com",
                        "address": "admin@contoso.com"
                    }
                }
            ],
            "organizer": {
                "emailAddress": {
                    "name": "Samantha Booth",
                    "address": "samanthab@contoso.com"
                }
            },
            "onlineMeeting": {
                "joinUrl": "https://teams.microsoft.com/l/meetup-join/19%3ameeting_YTU5OGEwOTctMjE5NC00ZDQ3LTk5MGMtNWFjNjRmODNhNmVk%40thread.v2/0?context=%7b%22Tid%22%3a%2272f988bf-86f1-41af-91ab-2d7cd011db47%22%2c%22Oid%22%3a%22458d4c95-124e-49da-ba9d-1dd0387e682e%22%7d"
            }
        }
    ]
}
```
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List events",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
