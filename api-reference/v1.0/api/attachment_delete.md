# Delete attachment

Delete attachment.
### Prerequisites
One of the following **scopes** is required to execute this API:

* If accessing attachments in Messages: _Mail.ReadWrite_
* If accessing attachments in Events: _Calendars.ReadWrite_
* If accessing attachments in Posts: _Groups.Read_
 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
DELETE /users/<id | userPrincipalName>/events/<id>/attachments/<id>
DELETE /groups/<id>/events/<id>/attachments/<id>
DELETE /users/<id | userPrincipalName>/messages/<id>/attachments/<id>

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer <token>. Required. |

### Request body
Do not supply a request body for this method.


### Response
If successful, this method returns `204, No Content` response code. It does not return anything in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "delete_attachment"
}-->
```http
DELETE https://graph.microsoft.com/v1.0/me/events/<id>/attachments/<id>
```
##### Response
Here is an example of the response. 
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 204 No Content
```
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Delete attachment",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->