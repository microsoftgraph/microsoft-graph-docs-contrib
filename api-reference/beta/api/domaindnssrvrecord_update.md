# Update domainDnsSrvRecord

Update the properties of domaindnssrvrecord object.
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
|nameTarget|String||
|port|Int32||
|priority|Int32||
|protocol|String||
|recordType|String||
|service|String||
|supportedService|String||
|ttl|Int32||
|weight|Int32||

### Response
If successful, this method returns a `200 OK` response code and updated [domainDnsSrvRecord](../resources/domaindnssrvrecord.md) object in the response body.
### Example
##### Request

<!-- {
  "blockType": "request",
  "name": "update_domaindnssrvrecord"
}-->
```http

Content-type: application/json
Content-length: 148

{
  "nameTarget": "nameTarget-value",
  "port": 99,
  "priority": 99,
  "protocol": "protocol-value",
  "service": "service-value",
  "weight": 99
}
```
##### Response
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.domainDnsSrvRecord"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 148

{
  "nameTarget": "nameTarget-value",
  "port": 99,
  "priority": 99,
  "protocol": "protocol-value",
  "service": "service-value",
  "weight": 99
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update domainDnsSrvRecord",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->