# Update bookingappointment

Update the properties of bookingappointment object.
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
PATCH /bookingBusinesses/<id>/appointments/<id>
```
## Optional request headers
| Name       | Description|
|:-----------|:-----------|
| Authorization  | Bearer {code}|

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|customerEmailAddress|String||
|customerId|String||
|customerLocation|location||
|customerName|String||
|customerNotes|String||
|customerPhone|String||
|duration|Duration||
|end|dateTimeTimeZone||
|invoiceAmount|Double||
|invoiceDate|dateTimeTimeZone||
|invoiceId|String||
|invoiceStatus|string| Possible values are: `draft`, `reviewing`, `open`, `canceled`, `paid`, `corrective`.|
|invoiceUrl|String||
|optOutOfCustomerEmail|Boolean||
|postBuffer|Duration||
|preBuffer|Duration||
|price|Double||
|priceType|string| Possible values are: `undefined`, `fixedPrice`, `startingAt`, `hourly`, `free`, `priceVaries`, `callUs`, `notSet`.|
|reminders|bookingReminder||
|selfServiceAppointmentId|String||
|serviceId|String||
|serviceLocation|location||
|serviceName|String||
|serviceNotes|String||
|staffMemberIds|String||
|start|dateTimeTimeZone||

## Response
If successful, this method returns a `200 OK` response code and updated [bookingAppointment](../resources/bookingappointment.md) object in the response body.
## Example
##### Request
The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_bookingappointment"
}-->
```http
PATCH https://graph.microsoft.com/beta/bookingBusinesses/<id>/appointments/<id>
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
      "altitude": 99,
      "latitude": 99,
      "longitude": 99,
      "accuracy": 99,
      "altitudeAccuracy": 99
    },
    "locationUri": "locationUri-value",
    "locationType": "locationType-value",
    "uniqueId": "uniqueId-value",
    "uniqueIdType": "uniqueIdType-value"
  }
}
```
##### Response
The following is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.bookingAppointment"
} -->
```http
HTTP/1.1 200 OK
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
      "altitude": 99,
      "latitude": 99,
      "longitude": 99,
      "accuracy": 99,
      "altitudeAccuracy": 99
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
  "description": "Update bookingappointment",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->