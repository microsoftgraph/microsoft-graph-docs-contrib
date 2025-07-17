---
title: "List calendarView"
description: "Get the occurrences, exceptions and single instances of events in a calendar view defined by a time range."
ms.localizationpriority: high
author: "iamgirishck"
ms.subservice: "outlook"
doc_type: apiPageType
ms.date: 06/21/2024
---

# List calendarView

Namespace: microsoft.graph

Get the occurrences, exceptions and single instances of events in a calendar view defined by a time range,
from a user's default calendar `(../me/calendarView)` or some other calendar of the user's.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "calendar_list_calendarview" } -->
[!INCLUDE [permissions-table](../includes/permissions/calendar-list-calendarview-permissions.md)]

## HTTP request

A user's default [calendar](../resources/calendar.md).

<!-- { "blockType": "ignored" } -->
```http
GET /me/calendar/calendarView?startDateTime={start_datetime}&endDateTime={end_datetime}
GET /users/{id | userPrincipalName}/calendar/calendarView?startDateTime={start_datetime}&endDateTime={end_datetime}
```

A user's [calendar](../resources/calendar.md) in the default [calendarGroup](../resources/calendargroup.md).
<!-- { "blockType": "ignored" } -->
```http
GET /me/calendars/{id}/calendarView?startDateTime={start_datetime}&endDateTime={end_datetime}
GET /users/{id | userPrincipalName}/calendars/{id}/calendarView?startDateTime={start_datetime}&endDateTime={end_datetime}
```

A user's [calendar](../resources/calendar.md) in a specific [calendarGroup](../resources/calendargroup.md).
<!-- { "blockType": "ignored" } -->
```http
GET /me/calendarGroups/{id}/calendars/{id}/calendarView?startDateTime={start_datetime}&endDateTime={end_datetime}
GET /users/{id | userPrincipalName}/calendarGroups/{id}/calendars/{id}/calendarView?startDateTime={start_datetime}&endDateTime={end_datetime}
```

## Query parameters

In the request URL, provide the following required query parameters with values.

| Parameter     | Type   | Description                                                                                                            |
|:--------------|:-------|:-----------------------------------------------------------------------------------------------------------------------|
| startDateTime | String | The start date and time of the time range, represented in ISO 8601 format. For example, "2019-11-08T19:00:00-08:00". |
| endDateTime   | String | The end date and time of the time range, represented in ISO 8601 format. For example, "2019-11-08T20:00:00-08:00".   |

The values of `startDateTime` and `endDateTime` are interpreted using the timezone offset specified in the value and aren't impacted by the value of the `Prefer: outlook.timezone` header if present. If no timezone offset is included in the value, it is interpreted as UTC.

This method also supports some of the [OData Query Parameters](/graph/query-parameters) to help customize the response.

**CalendarView** with `$top` has a minimum value of 1 and maximum of 1000. 

> [!NOTE]
> The **createdDateTime** and **lastModifiedDateTime** properties of [event](../resources/event.md) do not support `$select`. To get their values, simply query on **calendarView** without applying `$select`.

## Request headers
| Name       | Type | Description |
|:---------------|:--------|:--------|
| Authorization  | string |Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Prefer: outlook.timezone  | string | Use this to specify the time zone for start and end times in the response. If not specified, those time values are returned in UTC. Optional. |

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and collection of [event](../resources/event.md) objects in the response body.

If the result set spans multiple pages, **calendarView** returns an **@odata.nextLink** property in the response that contains a URL to the next page of results. See [paging](/graph/paging) for details.

## Example
### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_calendarview"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/me/calendar/calendarView?startDateTime=2017-01-01T19:00:00-08:00&endDateTime=2017-01-07T19:00:00-08:00
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-calendarview-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-calendarview-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-calendarview-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-calendarview-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-calendarview-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-calendarview-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-calendarview-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-calendarview-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response. 
> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.event",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "originalStartTimeZone": "originalStartTimeZone-value",
      "originalEndTimeZone": "originalEndTimeZone-value",
      "responseStatus": {
        "response": "response-value",
        "time": "datetime-value"
      },
      "iCalUId": "iCalUId-value",
      "reminderMinutesBeforeStart": 99,
      "isReminderOn": true
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List calendarView",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->
