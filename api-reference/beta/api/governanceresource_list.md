# List resources

Retrieve a collection of resources that the requestor has access to.

### HTTP request
```http
GET /privilegedAccess/<id>/resources
```
### Optional query parameters
This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.

### Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {code}|

### Request body
Do not supply a request body for this method.
### Response
If successful, this method returns a `200 OK` response code and collection of [governanceResource](../resources/governanceresource.md) objects in the response body.
### Examples

List all resources I can currently access to
##### Request
```http
GET https://graph.microsoft.com/beta/privilegedAccess/pimforazurerbac/resources
```
##### Response

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-Length: 1289

{
	"@odata.context":"https://graph.microsoft.com/beta/$metadata#resources",
	"value":[
	{
	"@odata.id":"https://graph.microsoft.com/beta/resources('ee33e978-dc0b-40ee-9db3-fb9a0dae41e8')",
	"id":"ee33e978-dc0b-40ee-9db3-fb9a0dae41e8",
	"externalId":"/subscriptions/c14ae696-5e0c-4e5d-88cc-bef6637737a0",
	"type":"subscription",
	"displayName":"Microsoft Azure Internal Consumption",
	"status":"Active"
 	},
 	{
	"@odata.id":"https://graph.microsoft.com/beta/resources('93b5660d-a79a-40fc-951f-88ef2eac2608')",
	"id":"93b5660d-a79a-40fc-951f-88ef2eac2608",
	"externalId":"/subscriptions/20d27ca6-0bc7-4396-bc31-be959acf3d46",
	"type":"subscription",
	"displayName":"Subscription for debac@microsoft.com",
	"status":"Active"
	},
	{
	"@odata.id":"https://graph.microsoft.com/beta/resources('300c6d07-f908-46d4-b4c2-307f786a9832')",
	"id":"300c6d07-f908-46d4-b4c2-307f786a9832",
	"externalId":"/subscriptions/ad5b7423-de55-4d5c-b604-f5806571b3c1",
	"type":"subscription",
	"displayName":"Subscription5 for anujc@microsoft.com",
	"status":"Active"
	}]
}
```