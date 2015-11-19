# Update conversation

Update the properties of conversation object.
### Prerequisites
One of the following **scopes** is required to execute this API: 
*Group.ReadWrite.All;*
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /groups/<id>/conversations/<id>

```
### Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer <token>. Required.  |

### Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|topic|String|The topic of the conversation. This property can be set when the conversation is created, but it cannot be updated.|

### Response
If successful, this method returns a `200 OK` response code and updated [conversation](../resources/conversation.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_conversation"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/groups/<id>/conversations/<id>
Content-type: application/json
Content-length: 181

{
  "topic": "topic-value",
}
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.conversation"
} -->
```http
Content-type: application/json
Content-length: 201

{
  "topic": "topic-value",
  "hasAttachments": true,
  "lastDeliveredDateTime": "datetime-value",
  "uniqueSenders": [
    "uniqueSenders-value"
  ],
  "preview": "preview-value",
  "id": "id-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update conversation",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
