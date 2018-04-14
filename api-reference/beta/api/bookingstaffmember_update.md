# Update bookingstaffmember

Update the properties of bookingstaffmember object.
## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |    |
|Delegated (personal Microsoft account) |    |
|Application |  | 

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /bookingBusinesses/<id>/staffMembers/<id>
```
## Optional request headers
| Name       | Description|
|:-----------|:-----------|
| Authorization  | Bearer {code}|

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|availabilityIsAffectedByPersonalCalendar|Boolean||
|colorIndex|Int32||
|displayName|String||
|emailAddress|String||
|role|string| Possible values are: `guest`, `administrator`, `viewer`, `externalGuest`.|
|useBusinessHours|Boolean||
|workingHours|bookingWorkHours||

## Response
If successful, this method returns a `200 OK` response code and updated [bookingStaffMember](../resources/bookingstaffmember.md) object in the response body.
## Example
##### Request
The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_bookingstaffmember"
}-->
```http
PATCH https://graph.microsoft.com/beta/bookingBusinesses/<id>/staffMembers/<id>
Content-type: application/json
Content-length: 309

{
  "availabilityIsAffectedByPersonalCalendar": true,
  "colorIndex": 99,
  "role": "role-value",
  "useBusinessHours": true,
  "workingHours": [
    {
      "day": "day-value",
      "timeSlots": [
        {
          "start": "datetime-value",
          "end": "datetime-value"
        }
      ]
    }
  ]
}
```
##### Response
The following is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.bookingStaffMember"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 329

{
  "availabilityIsAffectedByPersonalCalendar": true,
  "colorIndex": 99,
  "role": "role-value",
  "useBusinessHours": true,
  "workingHours": [
    {
      "day": "day-value",
      "timeSlots": [
        {
          "start": "datetime-value",
          "end": "datetime-value"
        }
      ]
    }
  ],
  "id": "id-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update bookingstaffmember",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->