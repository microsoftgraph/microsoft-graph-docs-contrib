# Create ServiceEndpoint

Use this API to create a new ServiceEndpoint.

### Prerequisites
The following **scopes** are required to execute this API: *Group.ReadWrite.All*
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /groups/<id>/endpoints
```
### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|
| Content-Type  | application/json |

### Request body
In the request body, supply a JSON representation of [ServiceEndpoint](../resources/serviceendpoint.md) object.


### Response
If successful, this method returns `201, Created` response code and [ServiceEndpoint](../resources/serviceendpoint.md) object in the response body.

### Example
##### Request

<!-- {
  "blockType": "request",
  "name": "create_serviceendpoint_from_group"
}-->
```http
POST https://graph.microsoft.com/beta/groups/<objectId>/endpoints

Content-type: application/json
Content-length: 225

{
  "ServiceEndpoint": {
    "capability": "Conversations",
    "providerId": "{Yammer GUID}",
    "providerName": "Yammer",
    "uri": "uri-value",
    "providerResourceId": "Yammer.FeedURL"
  }
}
```
In the request body, supply a JSON representation of [ServiceEndpoint](../resources/serviceendpoint.md) object.
##### Response
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.ServiceEndpoint"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 247

{
  "ServiceEndpoint": {
    "capability": "Conversations",
    "providerId": "{Yammer GUID}",
    "providerName": "Yammer",
    "uri": "uri-value",
    "providerResourceId": "Yammer.FeedURL",
    "id": "id-value"
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create ServiceEndpoint",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->