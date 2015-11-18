# message: send


### Prerequisites
One of the following **scopes** is required to execute this API: _Mail.Send_
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /users/<id | userPrincipalName>/messages/<id>/microsoft.graph.send
POST /drive/root/createdByUser/messages/<id>/microsoft.graph.send
POST /drive/root/lastModifiedByUser/messages/<id>/microsoft.graph.send

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer <token>. Required. |

### Request body

### Response
If successful, this method returns `202, Accepted` response code. It does not return anything in the response body.

### Example
Here is an example of how to call this API.
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "message_send"
}-->
```http
POST https://graph.microsoft.com/v1.0/me/messages/<id>/send
```

##### Response
##### Response
Here is an example of the response. 
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 200 OK
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "message: send",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->