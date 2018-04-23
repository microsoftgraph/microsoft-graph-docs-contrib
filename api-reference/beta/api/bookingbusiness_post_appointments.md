# Create bookingAppointment

Create a new [bookingAppointment](../resources/bookingappointment.md) for the specified Microsoft Bookings business.
## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  BookingsAppointment.ReadWrite.All, Bookings.ReadWrite.All, Bookings.Manage.All   |
|Delegated (personal Microsoft account) | Not supported.   |
|Application | Not supported.  |  

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /bookingBusinesses/{id}/appointments

```
## Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer {code}|

## Request body
In the request body, supply a JSON representation of [bookingAppointment](../resources/bookingappointment.md) object.


## Response
If successful, this method returns `201, Created` response code and [bookingAppointment](../resources/bookingappointment.md) object in the response body.

## Example
##### Request
The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_bookingappointment_from_bookingbusiness"
}-->
```http
POST https://graph.microsoft.com/beta/bookingBusinesses/<id>/appointments
Content-type: application/json
Content-length: 947

{
  "selfServiceAppointmentId": "selfServiceAppointmentId-value",
  "customerId": "customerId-value",
  "customerName": "customerName-value",
  "customerEmailAddress": "customerEmailAddress-value",
  "customerPhone": "customerPhone-value",
  "customerLocation": {
    "displayName": "displayName-value",
    "locationEmailAddress": "locationEmailAddress-value",
    "address": {
      "type": "type-value",
      "postOfficeBox": "postOfficeBox-value",
      "street": "street-value",
      "city": "city-value",
      "state": "state-value",
      "countryOrRegion": "countryOrRegion-value",
      "postalCode": "postalCode-value"
    },
    "coordinates": {
      "altitude": 99.0,
      "latitude": 99.0,
      "longitude": 99.0,
      "accuracy": 99.0,
      "altitudeAccuracy": 99.0
    },
    "locationUri": "locationUri-value",
    "locationType": "locationType-value",
    "uniqueId": "uniqueId-value",
    "uniqueIdType": "uniqueIdType-value"
  }
}
```
In the request body, supply a JSON representation of [bookingAppointment](../resources/bookingappointment.md) object.
##### Response
The following is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.bookingAppointment"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 947

{
  "selfServiceAppointmentId": "selfServiceAppointmentId-value",
  "customerId": "customerId-value",
  "customerName": "customerName-value",
  "customerEmailAddress": "customerEmailAddress-value",
  "customerPhone": "customerPhone-value",
  "customerLocation": {
    "displayName": "displayName-value",
    "locationEmailAddress": "locationEmailAddress-value",
    "address": {
      "type": "type-value",
      "postOfficeBox": "postOfficeBox-value",
      "street": "street-value",
      "city": "city-value",
      "state": "state-value",
      "countryOrRegion": "countryOrRegion-value",
      "postalCode": "postalCode-value"
    },
    "coordinates": {
      "altitude": 99.0,
      "latitude": 99.0,
      "longitude": 99.0,
      "accuracy": 99.0,
      "altitudeAccuracy": 99.0
    },
    "locationUri": "locationUri-value",
    "locationType": "locationType-value",
    "uniqueId": "uniqueId-value",
    "uniqueIdType": "uniqueIdType-value"
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create bookingAppointment",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->