# Get deletedItem

Retrieve the properties of an item in [deleted items](../resources/directory.md).

### Prerequisites
One of the following **scopes** are required to execute this API:
* For users: *User.ReadBasic.All; User.Read.All; User.ReadWrite.All; Directory.Read.All; Directory.ReadWrite.All; Directory.AccessAsUser.All*
* For groups: *Group.Read.All or Group.ReadWrite.All; Directory.Read.All; Directory.ReadWrite.All; Directory.AccessAsUser.All*

### HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /directory/deletedItems/Microsoft.Graph.Group/{id}
GET /directory/deletedItems/Microsoft.Graph.User/{id}
```

This API currently supports retrieving object types of groups (Microsoft.Graph.Group) or users (Microsoft.Graph.User) from deleted items. The type is specified as part of the URI.

### Optional query parameters
This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.

### Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer &lt;code&gt; Required|
| Accept  | application/json |

### Request body
Do not supply a request body for this method.
### Response
If successful, this method returns a `200 OK` response code and [directory](../resources/directory.md) object in the response body.
### Example
##### Request

<!-- {
  "blockType": "request",
  "name": "get_directory"
}-->
```http
GET https://graph.microsoft.com/beta/directory/deletedItems/Microsoft.Graph.Group/46cc6179-19d0-473e-97ad-6ff84347bbbb
```
##### Response
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directory"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#directoryObjects/$entity",
  "id":"46cc6179-19d0-473e-97ad-6ff84347bbbb",
  "displayName":"SampleGroup",
  "groupTypes":["Unified"],
  "mail":"example@contoso.com",
  "mailEnabled":true,
  "mailNickname":"Example",
  "securityEnabled":false,
  "visibility":"Public"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get directory",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->