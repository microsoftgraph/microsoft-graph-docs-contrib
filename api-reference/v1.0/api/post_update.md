# Update post

Update the properties of post object.
### Prerequisites
One of the following **scopes** is required to execute this API:

* Group.Readwrite.All
 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /groups/<id>/threads/<id>/posts/<id>
PATCH /groups/<id>/conversations/<id>/threads/<id>/posts/<id>
```
### Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer <token>. Required.  |

### Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|body|[itemBody](../resources/itemBody.md)||
|categories|String||
|newParticipants|[recipient](../resources/recipient.md)||

### Response
If successful, this method returns a `200 OK` response code and updated [post](../resources/post.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_post"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/groups/<id>/threads/<id>/posts/<id>
Content-type: application/json
Content-length: 414

{
  "body": {
    "contentType": {
    },
    "content": "content-value"
  },
  "receivedDateTime": "datetime-value",
  "hasAttachments": true,
  "from": {
    "emailAddress": {
      "name": "name-value",
      "address": "address-value"
    }
  },
  "sender": {
    "emailAddress": {
      "name": "name-value",
      "address": "address-value"
    }
  },
  "conversationThreadId": "conversationThreadId-value"
}
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.post"
} -->
```http
Content-type: application/json
Content-length: 414

{
  "body": {
    "contentType": {
    },
    "content": "content-value"
  },
  "receivedDateTime": "datetime-value",
  "hasAttachments": true,
  "from": {
    "emailAddress": {
      "name": "name-value",
      "address": "address-value"
    }
  },
  "sender": {
    "emailAddress": {
      "name": "name-value",
      "address": "address-value"
    }
  },
  "conversationThreadId": "conversationThreadId-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update post",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->