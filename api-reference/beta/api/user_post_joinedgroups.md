# Create Group

Use this API to create a new Group.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /users/<id | userPrincipalName>/joinedGroups
POST /drive/root/createdByUser/joinedGroups
POST /drive/root/lastModifiedByUser/joinedGroups

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer <token>. Required. |

### Request body
In the request body, supply a JSON representation of [Group](../resources/group.md) object.


### Response
If successful, this method returns `201, Created` response code and [Group](../resources/group.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_group_from_user"
}-->
```http
POST https://graph.microsoft.com/beta/me/joinedGroups
Content-type: application/json
Content-length: 244

{
  "group": {
    "description": "description-value",
    "displayName": "displayName-value",
    "groupTypes": [
      "groupTypes-value"
    ],
    "mail": "mail-value",
    "mailEnabled": true,
    "mailNickname": "mailNickname-value"
  }
}
```
In the request body, supply a JSON representation of [group](../resources/group.md) object.
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.group"
} -->
```http
Content-type: application/json
Content-length: 244

{
  "group": {
    "description": "description-value",
    "displayName": "displayName-value",
    "groupTypes": [
      "groupTypes-value"
    ],
    "mail": "mail-value",
    "mailEnabled": true,
    "mailNickname": "mailNickname-value"
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create Group",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->