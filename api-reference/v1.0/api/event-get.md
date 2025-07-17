---
title: "Get event"
description: "Get the properties and relationships of the specified event object."
author: "iamgirishck"
ms.localizationpriority: high
ms.subservice: "outlook"
doc_type: apiPageType
ms.date: 06/21/2024
---

# Get event

Namespace: microsoft.graph

Get the properties and relationships of the specified [event](../resources/event.md) object.

Currently, this operation returns event bodies in only HTML format.

There are two scenarios where an app can get an event in another user's calendar:

* If the app has application permissions, or,
* If the app has the appropriate delegated [permissions](#permissions) from one user, and another user has shared a calendar with that user, or, has given delegated access to that user. See [details and an example](/graph/outlook-get-shared-events-calendars).

Since the **event** resource supports [extensions](/graph/extensibility-overview), you can also use the `GET` operation to get custom properties and extension data in an **event** instance.


[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

### Support various time zones

For all GET operations that return events, you can use the `Prefer: outlook.timezone` header to specify the time zone for the event start and end times in the response.

For example, the following `Prefer: outlook.timezone` header sets the start and end times in the response to Eastern Standard Time.
```http
Prefer: outlook.timezone="Eastern Standard Time"
```

If the event was created in a different time zone, the start and end times will be adjusted to the time zone specified in that `Prefer` header.
For the supported time zone names, see [dateTimeTimeZone](../resources/datetimetimezone.md). If the `Prefer: outlook.timezone` header is not specified, the start and end times are returned in UTC.

You can use the **OriginalStartTimeZone** and **OriginalEndTimeZone** properties on the **event** resource to
find out the time zone used when the event was created.


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).
<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Calendars.ReadBasic, Calendars.Read        |
|Delegated (personal Microsoft account) | Calendars.ReadBasic, Calendars.Read    |
|Application | Calendars.ReadBasic, Calendars.Read                               |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /me/events/{id}
GET /users/{id | userPrincipalName}/events/{id}
GET /groups/{id}/events/{id}

GET /me/calendar/events/{id}
GET /users/{id | userPrincipalName}/calendar/events/{id}
GET /groups/{id}/calendar/events/{id}

GET /me/calendars/{id}/events/{id}
GET /users/{id | userPrincipalName}/calendars/{id}/events/{id}

GET /me/calendarGroups/{id}/calendars/{id}/events/{id}
GET /users/{id | userPrincipalName}/calendarGroups/{id}/calendars/{id}/events/{id}
```
## Optional query parameters
This method supports the [OData Query Parameters](/graph/query-parameters) to help customize the response.
## Request headers
| Name       | Type | Description |
|:---------------|:--------|:--------|
| Authorization  | string |Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Prefer: outlook.timezone  | string | Use this to specify the time zone for start and end times in the response. If not specified, those time values are returned in UTC. Optional. |
| Prefer: outlook.body-content-type | string | The format of the **body** property to be returned in. Values can be "text" or "html". A `Preference-Applied` header is returned as confirmation if this `Prefer` header is specified. If the header is not specified, the **body** property is returned in HTML format. Optional. |

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [event](../resources/event.md) object in the response body.

## Examples

### Example 1: Get a specified event

The following example gets the specified event. It specifies the following:

- A `Prefer: outlook.timezone` header to get date time values returned in Pacific Standard Time.
- A `$select` query parameter to return specific properties. Without a `$select` parameter, all of the event properties are returned.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["AAMkAGVmMDEzMTM4LTZmYWUtNDdkNC1hMDZiLTU1OGY5OTZhYmY4OABGAAAAAAAiQ8W967B7TKBjgx9rVEURBwAiIsqMbYjsT5e-T7KzowPTAAAAAAENAAAiIsqMbYjsT5e-T7KzowPTAAAa_WKzAAA="],
  "name": "get_event"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/me/events/AAMkAGVmMDEzMTM4LTZmYWUtNDdkNC1hMDZiLTU1OGY5OTZhYmY4OABGAAAAAAAiQ8W967B7TKBjgx9rVEURBwAiIsqMbYjsT5e-T7KzowPTAAAAAAENAAAiIsqMbYjsT5e-T7KzowPTAAAa_WKzAAA=?$select=subject,body,bodyPreview,organizer,attendees,start,end,location,hideAttendees
Prefer: outlook.timezone="Pacific Standard Time"
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-event-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-event-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-event-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-event-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-event-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-event-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-event-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-event-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response. The **body** property is returned in the default format of HTML.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.event"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
Preference-Applied: outlook.timezone="Pacific Standard Time"

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('48d31887-5fad-4d73-a9f5-3c356e68a038')/events(subject,body,bodyPreview,organizer,attendees,start,end,location,hideAttendees)/$entity",
    "@odata.etag": "W/\"IiLKjG2I7E+Xv0+ys6MD0wAEd5/kNQ==\"",
    "id": "AAMkAGVmMDEzMTM4LTZmYWUtNDdkNC1hMDZiLTU1OGY5OTZhYmY4OABGAAAAAAAiQ8W967B7TKBjgx9rVEURBwAiIsqMbYjsT5e-T7KzowPTAAAAAAENAAAiIsqMbYjsT5e-T7KzowPTAAAa_WKzAAA=",
    "subject": "New Product Regulations Touchpoint",
    "bodyPreview": "New Product Regulations Strategy Online Touchpoint MeetingYou're receiving this message because you're a member of the Engineering group. If you don't want to receive any messages or events from this group, stop following it in your inbox.View g",
    "hideAttendees": false,
    "body": {
        "contentType": "html",
        "content": "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"></head><body>New Product Regulations Strategy Online Touchpoint Meeting<div id=\"a59ada49-a492-4f1d-ac57-74be3a4194fc\" style=\"display:inline-block\"><table cellspacing=\"0\" style=\"table-layout:fixed; width:50px; border:0 none black\"><tbody><tr><td style=\"height:18px; padding:0; border-width:0 0 1px 0; border-style:none none solid none; border-color:#EAEAEA\">&nbsp;</td></tr></tbody></table><table cellspacing=\"0\" style=\"table-layout:fixed; width:90%; line-height:17px; border:0 none black\"><tbody><tr><td style=\"height:17px; padding:0; border:0 none black\">&nbsp;</td></tr><tr><td style=\"padding:0; border:0 none black; color:#666666; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\">You're receiving this message because you're a member of the <a href=\"https://outlook.office365.com/owa/engineering@contoso.com/groupsubscription.ashx?realm=contoso.com&amp;source=EscalatedMessage&amp;action=conversations\" style=\"color:#0072C6; text-decoration:none; font-size:12px; font-family:'Segoe UI Semibold','Segoe WP Semibold','Segoe UI','Segoe WP',sans-serif\">Engineering</a> group. If you don't want to receive any messages or events from this group,<a href=\"https://outlook.office365.com/owa/engineering@contoso.com/groupsubscription.ashx?realm=contoso.com&amp;source=EscalatedMessage&amp;action=unsubscribe\" id=\"BD5134C6-8D33-4ABA-A0C4-08581FDF89DB\" style=\"color:#0072C6; text-decoration:none; font-size:12px; font-family:'Segoe UI Semibold','Segoe WP Semibold','Segoe UI','Segoe WP',sans-serif\">stop following it in your inbox</a>.</td></tr><tr><td style=\"height:17px; padding:0; border:0 none black\">&nbsp;</td></tr><tr><td style=\"padding:0; border:0 none black; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\"><span style=\"display:inline-block\"><a href=\"https://outlook.office365.com/owa/engineering@contoso.com/groupsubscription.ashx?realm=contoso.com&amp;source=EscalatedMessage&amp;action=conversations\" style=\"color:#666666; text-decoration:none; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\">View group conversations</a></span><span style=\"color:#C8C8C8\">&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</span><span style=\"display:inline-block\"><a href=\"https://outlook.office365.com/owa/engineering@contoso.com/groupsubscription.ashx?realm=contoso.com&amp;source=EscalatedMessage&amp;action=files\" style=\"color:#666666; text-decoration:none; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\">View group files</a></span></td></tr><tr><td style=\"height:17px; padding:0; border:0 none black\">&nbsp;</td></tr></tbody></table></div></body></html>"
    },
    "start": {
        "dateTime": "2014-11-03T17:00:00.0000000",
        "timeZone": "UTC"
    },
    "end": {
        "dateTime": "2014-11-03T17:30:00.0000000",
        "timeZone": "UTC"
    },
    "location": {
        "displayName": "Conf Room Rainier",
        "locationType": "default",
        "uniqueId": "Conf Room Rainier",
        "uniqueIdType": "private"
    },
    "attendees": [
        {
            "type": "required",
            "status": {
                "response": "none",
                "time": "0001-01-01T00:00:00Z"
            },
            "emailAddress": {
                "name": "Engineering",
                "address": "engineering@contoso.com"
            }
        },
        {
            "type": "required",
            "status": {
                "response": "none",
                "time": "0001-01-01T00:00:00Z"
            },
            "emailAddress": {
                "name": "Irvin Sayers",
                "address": "IrvinS@contoso.com"
            }
        }
    ],
    "organizer": {
        "emailAddress": {
            "name": "Engineering",
            "address": "engineering@contoso.com"
        }
    },
    "calendar@odata.associationLink": "https://graph.microsoft.com/v1.0/users('48d31887-5fad-4d73-a9f5-3c356e68a038')/calendars('AAMkAGVmMDEzMTM4LTZmYWUtNDdkNC1hMDZiLTU1OGY5OTZhYmY4OAAuAAAAAAAiQ8W967B7TKBjgx9rVEURAQAiIsqMbYjsT5e-T7KzowPTAAAAAAENAAA=')/$ref",
    "calendar@odata.navigationLink": "https://graph.microsoft.com/v1.0/users('48d31887-5fad-4d73-a9f5-3c356e68a038')/calendars('AAMkAGVmMDEzMTM4LTZmYWUtNDdkNC1hMDZiLTU1OGY5OTZhYmY4OAAuAAAAAAAiQ8W967B7TKBjgx9rVEURAQAiIsqMbYjsT5e-T7KzowPTAAAAAAENAAA=')"
}
```

### Example 2: Get an event that specifies more than one location

The following example shows how to get an event that specifies more than one location. The request specifies a `$select` query parameter
to return specific properties.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["AAMkAGVmMDEzMTM4LTZmYWUtNDdkNC1hMDZiLTU1OGY5OTZhYmY4OABGAAAAAAAiQ8W967B7TKBjgx9rVEURBwAiIsqMbYjsT5e-T7KzowPTAAAAAAENAAAiIsqMbYjsT5e-T7KzowPTAAAa_WKzAAA="],
  "name": "get_event_multiple_locations"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/me/events/AAMkAGVmMDEzMTM4LTZmYWUtNDdkNC1hMDZiLTU1OGY5OTZhYmY4OABGAAAAAAAiQ8W967B7TKBjgx9rVEURBwAiIsqMbYjsT5e-T7KzowPTAAAAAAENAAAiIsqMbYjsT5e-T7KzowPTAAAa_WKzAAA=?$select=subject,body,bodyPreview,organizer,attendees,start,end,location,locations
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-event-multiple-locations-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-event-multiple-locations-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-event-multiple-locations-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-event-multiple-locations-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-event-multiple-locations-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-event-multiple-locations-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-event-multiple-locations-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-event-multiple-locations-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response. The **locations** property includes details for the three locations that the event is organized for.

Because the request doesn't specify any `Prefer: outlook.timezone` header, the **start** and **end** properties are displayed in the default UTC time zone.

The event body is in the default HTML format.

<!-- {
  "blockType": "response",
  "name": "get_event_multiple_locations",
  "truncated": true,
  "@odata.type": "microsoft.graph.event"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('48d31887-5fad-4d73-a9f5-3c356e68a038')/events(subject,body,bodyPreview,organizer,attendees,start,end,location,locations)/$entity",
    "@odata.etag": "W/\"IiLKjG2I7E+Xv0+ys6MD0wAEd5/kNQ==\"",
    "id": "AAMkAGVmMDEzMTM4LTZmYWUtNDdkNC1hMDZiLTU1OGY5OTZhYmY4OABGAAAAAAAiQ8W967B7TKBjgx9rVEURBwAiIsqMbYjsT5e-T7KzowPTAAAAAAENAAAiIsqMbYjsT5e-T7KzowPTAAAa_WKzAAA=",
    "subject": "New Product Regulations Touchpoint",
    "bodyPreview": "New Product Regulations Strategy Online Touchpoint MeetingYou're receiving this message because you're a member of the Engineering group. If you don't want to receive any messages or events from this group, stop following it in your inbox.View g",
    "body": {
        "contentType": "html",
        "content": "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"></head><body>New Product Regulations Strategy Online Touchpoint Meeting<div id=\"a59ada49-a492-4f1d-ac57-74be3a4194fc\" style=\"display:inline-block\"><table cellspacing=\"0\" style=\"table-layout:fixed; width:50px; border:0 none black\"><tbody><tr><td style=\"height:18px; padding:0; border-width:0 0 1px 0; border-style:none none solid none; border-color:#EAEAEA\">&nbsp;</td></tr></tbody></table><table cellspacing=\"0\" style=\"table-layout:fixed; width:90%; line-height:17px; border:0 none black\"><tbody><tr><td style=\"height:17px; padding:0; border:0 none black\">&nbsp;</td></tr><tr><td style=\"padding:0; border:0 none black; color:#666666; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\">You're receiving this message because you're a member of the <a href=\"https://outlook.office365.com/owa/engineering@contoso.com/groupsubscription.ashx?realm=contoso.com&amp;source=EscalatedMessage&amp;action=conversations\" style=\"color:#0072C6; text-decoration:none; font-size:12px; font-family:'Segoe UI Semibold','Segoe WP Semibold','Segoe UI','Segoe WP',sans-serif\">Engineering</a> group. If you don't want to receive any messages or events from this group,<a href=\"https://outlook.office365.com/owa/engineering@contoso.com/groupsubscription.ashx?realm=contoso.com&amp;source=EscalatedMessage&amp;action=unsubscribe\" id=\"BD5134C6-8D33-4ABA-A0C4-08581FDF89DB\" style=\"color:#0072C6; text-decoration:none; font-size:12px; font-family:'Segoe UI Semibold','Segoe WP Semibold','Segoe UI','Segoe WP',sans-serif\">stop following it in your inbox</a>.</td></tr><tr><td style=\"height:17px; padding:0; border:0 none black\">&nbsp;</td></tr><tr><td style=\"padding:0; border:0 none black; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\"><span style=\"display:inline-block\"><a href=\"https://outlook.office365.com/owa/engineering@contoso.com/groupsubscription.ashx?realm=contoso.com&amp;source=EscalatedMessage&amp;action=conversations\" style=\"color:#666666; text-decoration:none; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\">View group conversations</a></span><span style=\"color:#C8C8C8\">&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</span><span style=\"display:inline-block\"><a href=\"https://outlook.office365.com/owa/engineering@contoso.com/groupsubscription.ashx?realm=contoso.com&amp;source=EscalatedMessage&amp;action=files\" style=\"color:#666666; text-decoration:none; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\">View group files</a></span></td></tr><tr><td style=\"height:17px; padding:0; border:0 none black\">&nbsp;</td></tr></tbody></table></div></body></html>"
    },
    "start": {
        "dateTime": "2014-11-03T17:00:00.0000000",
        "timeZone": "UTC"
    },
    "end": {
        "dateTime": "2014-11-03T17:30:00.0000000",
        "timeZone": "UTC"
    },
    "location": {
        "displayName": "Conf Room Rainier",
        "locationType": "default",
        "uniqueId": "Conf Room Rainier",
        "uniqueIdType": "private"
    },
    "locations": [
        {
            "displayName": "Conf Room Rainier",
            "locationType": "default",
            "uniqueId": "",
            "uniqueIdType": "unknown"
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
                "name": "Engineering",
                "address": "engineering@contoso.com"
            }
        },
        {
            "type": "required",
            "status": {
                "response": "none",
                "time": "0001-01-01T00:00:00Z"
            },
            "emailAddress": {
                "name": "Irvin Sayers",
                "address": "IrvinS@contoso.com"
            }
        }
    ],
    "organizer": {
        "emailAddress": {
            "name": "Engineering",
            "address": "engineering@contoso.com"
        }
    },
    "calendar@odata.associationLink": "https://graph.microsoft.com/v1.0/users('48d31887-5fad-4d73-a9f5-3c356e68a038')/calendars('AAMkAGVmMDEzMTM4LTZmYWUtNDdkNC1hMDZiLTU1OGY5OTZhYmY4OAAuAAAAAAAiQ8W967B7TKBjgx9rVEURAQAiIsqMbYjsT5e-T7KzowPTAAAAAAENAAA=')/$ref",
    "calendar@odata.navigationLink": "https://graph.microsoft.com/v1.0/users('48d31887-5fad-4d73-a9f5-3c356e68a038')/calendars('AAMkAGVmMDEzMTM4LTZmYWUtNDdkNC1hMDZiLTU1OGY5OTZhYmY4OAAuAAAAAAAiQ8W967B7TKBjgx9rVEURAQAiIsqMbYjsT5e-T7KzowPTAAAAAAENAAA=')"
}
```

### Example 3: Expand a series master event

The following example shows how to expand a series master event of a recurring series with exceptions and cancelled occurences. The request specifies a `$select` query parameter to return specific properties.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_event_seriesMaster_expansion",
  "sampleKeys": ["AAMkADAGAADDdm4NAAA="]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/me/events/AAMkADAGAADDdm4NAAA=?$select=subject,start,end,occurrenceId,exceptionOccurrences,cancelledOccurrences&$expand=exceptionOccurrences
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-event-seriesmaster-expansion-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-event-seriesmaster-expansion-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-event-seriesmaster-expansion-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-event-seriesmaster-expansion-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-event-seriesmaster-expansion-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-event-seriesmaster-expansion-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-event-seriesmaster-expansion-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-event-seriesmaster-expansion-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response. The GET operation returns the selected properties for the series master event. Specifically, for events in the **exceptionOccurrences** collection, the operation returns the **id** property, and the applicable, selected properties (**subject**, **start**, **end**, **occurrenceId**). As for events in the **cancelledOccurrences** collection, because the events no longer exist, the operation returns only their **occurrenceId** property values.

<!-- {
  "blockType": "response",
  "name": "get_event_seriesMaster_expansion",
  "truncated": true,
  "@odata.type": "microsoft.graph.event"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('d1a2fae9-db66-4cc9-8133-2184c77af1b8')/events(subject,start,end,occurrenceId,exceptionOccurrences,cancelledOccurrences)/$entity",
  "@odata.etag": "W/\"y53lbKh6jkaxHzFwGhgyxgAAw5zhug==\"",
  "id": "AAMkADAGAADDdm4NAAA=",
  "iCalUId": "040000008200E00074=",
  "uid": "040000008200E00074C=",
  "subject": "Daily stand-up",
  "cancelledOccurrences": [
    "OID.AAMkADAGAADDdm4NAAA=.2020-04-30",
    "OID.AAMkADAGAADDdm4NAAA=.2020-05-07",
    "OID.AAMkADAGAADDdm4NAAA=.2020-05-14"
  ],
  "occurrenceId": null,
  "start": {
    "dateTime": "2020-04-23T11:30:00.0000000",
    "timeZone": "UTC"
  },
  "end": {
    "dateTime": "2020-04-23T12:00:00.0000000",
    "timeZone": "UTC"
  },
  "exceptionOccurrences": [
    {
      "id": "AAMkADM0ZGRhMjdjLTA==",
      "Subject": "SM update 24",
      "occurrenceId": "OID.AAMkADAGAADDdm4NAAA=.2020-05-21",
      "start": {
        "dateTime": "2020-05-21T11:30:00.0000000",
        "timeZone": "UTC"
      },
      "end": {
        "dateTime": "2020-05-21T12:00:00.0000000",
        "timeZone": "UTC"
      }
    }
  ]
}
```

## Related content

- [Add custom data to resources using extensions](/graph/extensibility-overview)
- [Add custom data to users using open extensions](/graph/extensibility-open-users)
- [Add custom data to groups using schema extensions](/graph/extensibility-schema-groups)


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get event",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->
