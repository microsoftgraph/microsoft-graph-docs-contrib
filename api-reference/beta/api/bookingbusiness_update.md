# Update bookingbusiness

Update the properties of bookingbusiness object.
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
PATCH /bookingBusinesses/<id>
```
## Optional request headers
| Name       | Description|
|:-----------|:-----------|
| Authorization  | Bearer {code}|

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|address|physicalAddress||
|businessHours|bookingWorkHours||
|businessType|String||
|defaultCurrencyIso|String||
|displayName|String||
|email|String||
|isPublished|Boolean||
|phone|String||
|publicUrl|String||
|schedulingPolicy|bookingSchedulingPolicy||
|webSiteUrl|String||

## Response
If successful, this method returns a `200 OK` response code and updated [bookingBusiness](../resources/bookingbusiness.md) object in the response body.
## Example
##### Request
The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_bookingbusiness"
}-->
```http
PATCH https://graph.microsoft.com/beta/bookingBusinesses/<id>
Content-type: application/json
Content-length: 441

{
  "businessType": "businessType-value",
  "address": {
    "type": "type-value",
    "postOfficeBox": "postOfficeBox-value",
    "street": "street-value",
    "city": "city-value",
    "state": "state-value",
    "countryOrRegion": "countryOrRegion-value",
    "postalCode": "postalCode-value"
  },
  "phone": "phone-value",
  "email": "email-value",
  "webSiteUrl": "webSiteUrl-value",
  "defaultCurrencyIso": "defaultCurrencyIso-value"
}
```
##### Response
The following is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.bookingBusiness"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 441

{
  "businessType": "businessType-value",
  "address": {
    "type": "type-value",
    "postOfficeBox": "postOfficeBox-value",
    "street": "street-value",
    "city": "city-value",
    "state": "state-value",
    "countryOrRegion": "countryOrRegion-value",
    "postalCode": "postalCode-value"
  },
  "phone": "phone-value",
  "email": "email-value",
  "webSiteUrl": "webSiteUrl-value",
  "defaultCurrencyIso": "defaultCurrencyIso-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update bookingbusiness",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->