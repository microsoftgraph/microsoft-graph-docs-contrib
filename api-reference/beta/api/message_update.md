# Update message

Update the properties of message object.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /users/<id | userPrincipalName>/messages/<id>
PATCH /drive/root/createdByUser/messages/<id>
PATCH /drive/root/lastModifiedByUser/messages/<id>
```
### Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Bearer <token>. Required. |

### Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|bccRecipients|Recipient||
|body|ItemBody||
|bodyPreview|String||
|categories|String||
|ccRecipients|Recipient||
|changeKey|String||
|conversationId|String||
|createdDateTime|DateTimeOffset||
|from|Recipient||
|hasAttachments|Boolean||
|importance|String| Possible values are: `Low`, `Normal`, `High`.|
|inferenceClassification|String| Possible values are: `Focused`, `Other`.|
|isDeliveryReceiptRequested|Boolean||
|isDraft|Boolean||
|isRead|Boolean||
|isReadReceiptRequested|Boolean||
|lastModifiedDateTime|DateTimeOffset||
|parentFolderId|String||
|receivedDateTime|DateTimeOffset||
|replyTo|Recipient||
|sender|Recipient||
|sentDateTime|DateTimeOffset||
|subject|String||
|toRecipients|Recipient||
|uniqueBody|ItemBody||
|webLink|String||

### Response
If successful, this method returns a `200 OK` response code and updated [message](../resources/message.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_message"
}-->
```http
PATCH https://graph.microsoft.com/beta/me/messages/<id>
Content-type: application/json
Content-length: 248

{
  "receivedDateTime": "datetime-value",
  "sentDateTime": "datetime-value",
  "hasAttachments": true,
  "subject": "subject-value",
  "body": {
    "contentType": {
    },
    "content": "content-value"
  },
  "bodyPreview": "bodyPreview-value"
}
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.message"
} -->
```http
Content-type: application/json
Content-length: 248

{
  "receivedDateTime": "datetime-value",
  "sentDateTime": "datetime-value",
  "hasAttachments": true,
  "subject": "subject-value",
  "body": {
    "contentType": {
    },
    "content": "content-value"
  },
  "bodyPreview": "bodyPreview-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update message",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->