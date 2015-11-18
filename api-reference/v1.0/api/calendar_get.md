# Get calendar

Retrieve the properties and relationships of calendar object.
### Prerequisites
One of the following **scopes** is required to execute this API: 
*Calendars.Read*
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /me/calendar
GET /users/<id | userPrincipalName>/calendar
GET /groups/<id>/calendar
GET /drive/root/createdByUser/calendar
GET /me/calendars/<id>
GET /users/<id | userPrincipalName>/calendars/<id>
GET /me/calendarGroup/calendars/<id>
GET /users/<id | userPrincipalName>/calendarGroup/calendars/<id>
GET /me/calendarGroups/<id>/calendars/<id>
GET /users/<id | userPrincipalName>/calendarGroups/<id>/calendars/<id>
GET /groups/<objectId>/calendar
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
If successful, this method returns a `200 OK` response code and [calendar](../resources/calendar.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_calendar"
}-->
```http
GET https://graph.microsoft.com/v1.0/me/calendar
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.calendar"
} -->
```http
Content-type: application/json
Content-length: 98

{
  "name": "name-value",
  "color": {
  },
  "changeKey": "changeKey-value",
  "id": "id-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get calendar",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
