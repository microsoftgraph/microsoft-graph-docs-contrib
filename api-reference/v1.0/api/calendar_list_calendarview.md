# List calendarView

Retrieve a list of event objects.
### Prerequisites
One of the following **scopes** is required to execute this API: 
*Calendars.Read*
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /users/<id | userPrincipalName>/calendar/calendarView
GET /groups/<id>/calendar/calendarView
GET /drive/root/createdByUser/calendar/calendarView
GET /me/calendar/calendarView?startDateTime={start_datetime}&endDateTime={end_datetime}
GET /users/<id | userPrincipalName>/calendar/calendarView?startDateTime={start_datetime}&endDateTime={end_datetime}
GET /me/calendars/<id>/calendarView?startDateTime={start_datetime}&endDateTime={end_datetime}
GET /users/<id | userPrincipalName>/calendars/<id>/calendarView?startDateTime={start_datetime}&endDateTime={end_datetime}
GET /me/calendarGroup/calendars/<id>/calendarView?startDateTime={start_datetime}&endDateTime={end_datetime}
GET /users/<id | userPrincipalName>/calendarGroup/calendars/<id>/calendarView?startDateTime={start_datetime}&endDateTime={end_datetime}
GET /me/calendarGroups/<id>/calendars/<id>/calendarView?startDateTime={start_datetime}&endDateTime={end_datetime}
GET /users/<id | userPrincipalName>/calendarGroups/<id>/calendars/<id>/calendarView?startDateTime={start_datetime}&endDateTime={end_datetime}
GET /groups/<objectId>/calendar/calendarView?startDateTime={start_datetime}&endDateTime={end_datetime}
```
### Optional query parameters
This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.
### Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Bearer <token>. Required. |

### Request body
Do not supply a request body for this method.
### Response
If successful, this method returns a `200 OK` response code and collection of [Event](../resources/event.md) objects in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_calendarview"
}-->
```http
GET https://graph.microsoft.com/v1.0/me/calendar/calendarView
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.event",
  "isCollection": true
} -->
```http
Content-type: application/json
Content-length: 354

{
  "value": [
    {
      "originalStartTimeZone": "originalStartTimeZone-value",
      "originalEndTimeZone": "originalEndTimeZone-value",
      "responseStatus": {
        "response": {
        },
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
  "tocPath": ""
}-->
