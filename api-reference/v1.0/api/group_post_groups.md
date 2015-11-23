# Create group

Use this API to create a new group. The request body contains the group to create. At a minimum, you must specify the required properties for the group. You can optionally specify any other writable properties. You can only create security groups with the Microsoft Graph. You cannot create mail-enabled security groups or mail distribution groups.
### Prerequisites
One of the following **scopes** is required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /groups
```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer <token>. Required. |

### Request body
In the request body, supply a JSON representation of [group](../resources/group.md) object.

The following table shows the properties that are required when you create a group.

| Parameter | Type | Description|
|:---------------|:--------|:----------|
| displayName | string | The name to display in the address book for the group. |
| mailEnabled | boolean | Must be **false**. This is because only pure security groups can be created using Microsoft Graph. |
| mailNickname | string | The mail alias for the group. |
| securityEnabled | boolean | Must be **true**. This is because only pure security groups can be created using Microsoft Graph. |

### Response
If successful, this method returns `201, Created` response code and [group](../resources/group.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_group_from_groups"
}-->
```http
POST https://graph.microsoft.com/v1.0/groups
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
HTTP/1.1 200 OK
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
  "description": "Create group",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->