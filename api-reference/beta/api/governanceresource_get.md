# Get resource

Retrieve the properties and relationships of a resource object.

### HTTP request
```http
GET /privilegedAccess/<id>/resources/<id>
```

### Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {code}|

### Request body
Do not supply a request body for this method.
### Response
If successful, this method returns a `200 OK` response code and [governanceResource](../resources/goveranceresource.md) object in the response body.

### Example
#### Get details of subscription "Wingtip Toys - Prod"
##### Request
```http
GET https://graph.microsoft.com/beta/privilegedAccess/pimforrbac/resources/e5e7d29d-5465-45ac-885f-4716a5ee74b5
```
##### Response

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-Length: 459

{
  	"@odata.context":"https://graph.microsoft.com/beta/$metadata#resources/$entity",
	"@odata.id":"https://graph.microsoft.com/beta/resources('e5e7d29d-5465-45ac-885f-4716a5ee74b5')",
	"id":"e5e7d29d-5465-45ac-885f-4716a5ee74b5",
	"externalId":"/subscriptions/38ab2ccc-3747-4567-b36b-9478f5602f0d",
	"displayName":"Wingtip Toys - Prod",
	"type":"subscription",
	"status":"Active"
}
```