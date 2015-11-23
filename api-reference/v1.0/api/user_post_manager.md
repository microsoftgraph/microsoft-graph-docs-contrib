# Create manager

Use this API to assing user's manager. You can add user or contact as a manager of a user. 

### Prerequisites
One of the following **scopes** is required to execute this API: *User.ReadWrite* or *User.ReadWrite.All*
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /users/<id>/manager
```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer <token>. Required. |

### Request body
In the request body, supply a JSON representation of [directoryObject](../resources/directoryobject.md) object.


### Response
If successful, this method returns `201, Created` response code and [directoryObject](../resources/directoryobject.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_directoryobject_from_group"
}-->
```http
POST https://graph.microsoft.com/v1.0/users/<id>/manager
Content-type: application/json
Content-length: xxx

{
  "directoryObject": {
  }
}
```
In the request body, supply a JSON representation of [directoryObject](../resources/directoryobject.md) object.
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryobject"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: xxx

{
    "@odata.id": "<directoryObject_id"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create member",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->