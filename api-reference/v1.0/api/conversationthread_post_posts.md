# Create Post

Use this API to create a new Post.
### Prerequisites
One of the following **scopes** is required to execute this API:
*Group.ReadWrite.All*
 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /groups/<id>/threads/<id>/posts
POST /groups/<id>/conversations/<id>/threads/<id>/posts

```
### Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer <token>. Required.  |

### Request body
In the request body, supply a JSON representation of [post](../resources/post.md) object.


### Response
If successful, this method returns `201, Created` response code and [post](../resources/post.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_post_from_conversationthread"
}-->
```http
POST https://graph.microsoft.com/v1.0/groups/<id>/threads/<id>/posts
Content-type: application/json
Content-length: 414

{
  "body": {
    "contentType": {
    },
    "content": "content-value"
  },
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
}
```
In the request body, supply a JSON representation of [post](../resources/post.md) object.
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
  "description": "Create Post",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->