# Get domainDnsSrvRecord

Retrieve the properties and relationships of domaindnssrvrecord object.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http

```
### Optional query parameters
This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.

### Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

### Request body
Do not supply a request body for this method.
### Response
If successful, this method returns a `200 OK` response code and [domainDnsSrvRecord](../resources/domaindnssrvrecord.md) object in the response body.
### Example
##### Request

<!-- {
  "blockType": "request",
  "name": "get_domaindnssrvrecord"
}-->
```http

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
  "description": "Get domainDnsSrvRecord",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->