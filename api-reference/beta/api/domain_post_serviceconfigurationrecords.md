# Create domainDnsRecord

Use this API to create a new domainDnsRecord.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /domains/<id>/serviceConfigurationRecords

```
### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|
| Content-Type  | application/json |

### Request body
In the request body, supply a JSON representation of [domainDnsRecord](../resources/domaindnsrecord.md) object.


### Response
If successful, this method returns `201, Created` response code and [domainDnsRecord](../resources/domaindnsrecord.md) object in the response body.

### Example
##### Request

<!-- {
  "blockType": "request",
  "name": "create_domaindnsrecord_from_domain"
}-->
```http
POST https://graph.microsoft.com/beta/domains/<id>/serviceConfigurationRecords
Content-type: application/json
Content-length: 147

{
  "isOptional": true,
  "label": "label-value",
  "recordType": "recordType-value",
  "supportedService": "supportedService-value",
  "ttl": 99
}
```
In the request body, supply a JSON representation of [domainDnsRecord](../resources/domaindnsrecord.md) object.
##### Response
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.domainDnsRecord"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 167

{
  "isOptional": true,
  "label": "label-value",
  "recordType": "recordType-value",
  "supportedService": "supportedService-value",
  "ttl": 99,
  "id": "id-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create domainDnsRecord",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->