# Create bookingStaffMember

Use this API to create a new bookingStaffMember.
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
POST /bookingBusinesses/<id>/staffMembers

```
## Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer {code}|

## Request body
In the request body, supply a JSON representation of [bookingStaffMember](../resources/bookingstaffmember.md) object.


## Response
If successful, this method returns `201, Created` response code and [bookingStaffMember](../resources/bookingstaffmember.md) object in the response body.

## Example
##### Request
The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_bookingstaffmember_from_bookingbusiness"
}-->
```http
POST https://graph.microsoft.com/beta/bookingBusinesses/<id>/staffMembers
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
In the request body, supply a JSON representation of [bookingStaffMember](../resources/bookingstaffmember.md) object.
##### Response
The following is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.bookingStaffMember"
} -->
```http
HTTP/1.1 201 Created
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
  "description": "Create bookingStaffMember",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->