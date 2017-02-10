# Update domainDnsMxRecord

Update the properties of domaindnsmxrecord object.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http

```
### Optional request headers
| Name       | Description|
|:-----------|:-----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|
| Content-Type  | application/json |

### Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|canonicalName|String||
|isOptional|Boolean||
|label|String||
|mailExchange|String||
|preference|Int32||
|recordType|String||
|supportedService|String||
|ttl|Int32||

### Response
If successful, this method returns a `200 OK` response code and updated [domainDnsMxRecord](../resources/domaindnsmxrecord.md) object in the response body.
### Example
##### Request

<!-- {
  "blockType": "request",
  "name": "update_domaindnsmxrecord"
}-->
```http

Content-type: application/json
Content-length: 194

{
  "mailExchange": "mailExchange-value",
  "preference": 99,
  "isOptional": true,
  "label": "label-value",
  "recordType": "recordType-value",
  "supportedService": "supportedService-value"
}
```
##### Response
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.domainDnsMxRecord"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 194

{
  "mailExchange": "mailExchange-value",
  "preference": 99,
  "isOptional": true,
  "label": "label-value",
  "recordType": "recordType-value",
  "supportedService": "supportedService-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update domainDnsMxRecord",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->