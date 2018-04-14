# bookingBusiness: getCalendarView


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
POST /bookingBusinesses/<id>/getCalendarView(start=start-value, end=end-value)

```
## Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer {code}|

## Request body
In the request URL, provide following query parameters with values.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|start|DateTimeOffset||
|end|DateTimeOffset||

## Response
If successful, this method returns `200, OK` response code and [bookingAppointment](../resources/bookingappointment.md) collection object in the response body.

## Example
The following is an example of how to call this API.
##### Request
The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "bookingbusiness_getcalendarview"
}-->
```http
POST https://graph.microsoft.com/beta/bookingBusinesses/<id>/getCalendarView
```

##### Response
The following is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.bookingAppointment",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 1092

{
  "value": [
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
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "bookingBusiness: getCalendarView",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->