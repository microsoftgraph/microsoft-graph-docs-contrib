# Create Attachment

Use this API to add an [attachment](../resources/attachment.md) to a message.
### Prerequisites
One of the following **scopes** is required to execute this API: 
*Mail.ReadWrite* 
### HTTP request
<!-- { "blockType": "ignored" } -->
Attachments for a [message](../resources/message.md) in a user's mailbox.
```http
POST /me/messages/<id>/attachments
POST /users/<id | userPrincipalName>/messages/<id>/attachments
```
Attachments for a [message](../resources/message.md) contained in a top level [mailFolder](../resources/mailfolder.md) in a user's mailbox.
```http
POST /users/me/mailFolders/<id>/messages/<id>/attachments
POST /users/<id | userPrincipalName>/mailFolders/<id>/messages/<id>/attachments
```
Attachments for a [message](../resources/message.md) contained in a child folder of a [mailFolder](../resources/mailfolder.md) in a user's mailbox.  The 
example below shows one level of nesting, but a message can be located in a child of a child and so on.
```http
GET /me/mailFolders/<id>/childFolders/<id>/.../messages/<id>/attachments/<id>
GET /users/<id | userPrincipalName>/mailFolders/<id>/childFolders/<id>/messages/<id>/attachments/<id>
```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer <token>. Required. |
| Content-Type | string  | Nature of the data in the body of an entity. Required. |

### Request body
In the request body, supply a JSON representation of [Attachment](../resources/attachment.md) object.


### Response
If successful, this method returns `201, Created` response code and [Attachment](../resources/attachment.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_attachment_from_message"
}-->
```http
Creating file attachment 
POST https://graph.microsoft.com/v1.0/me/messages/<id>/attachments
Content-type: application/json
Content-length: 142

{
  "@odata.type": "#Microsoft.OutlookServices.FileAttachment",
  "name": "name-value",
  "contentType": "contentType-value",
  "isInline": false,
  "contentLocation": "contentLocation-value",
  "contentBytes": "contentBytes-value"
}

Creating item attachment 
POST https://graph.microsoft.com/v1.0/me/events/<id>/attachments
Content-type: application/json
Content-length: 100

{
  "@odata.type": "#Microsoft.OutlookServices.ItemAttachment",
  "name": "name-value",
  "item": "message or event entity"
}
```
In the request body, supply a JSON representation of [attachment](../resources/attachment.md) object.
##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP 200 OK
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create Attachment",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->