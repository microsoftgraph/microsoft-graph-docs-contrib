# Create groupsettingtemplate

Use this API to create a new groupSettingTemplate.
### Prerequisites

The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /groupSettingTemplates

```

### Request headers

| Name | Description |
|:---------------|:----------|
| Authorization  | string  | Bearer {token}. Required. |
| Content-Type  | application/json |

### Request body
In the request body, supply a JSON representation of [groupSettingTemplate](../resources/groupsettingtemplate.md) object.


### Response

If successful, this method returns `201, Created` response code and [groupSettingTemplate](../resources/groupsettingtemplate.md) object in the response body.

### Example

##### Request

<!-- {
  "blockType": "request",
  "name": "create_groupsettingtemplate_from_groupsettingtemplates"
}-->
```http
POST https://graph.microsoft.com/beta/groupSettingTemplates
Content-type: application/json
Content-length: 302

{
  "groupSettingTemplate": {
    "displayName": "displayName-value",
    "description": "description-value",
    "values": [
      {
        "name": "name-value",
        "type": "type-value",
        "defaultValue": "defaultValue-value",
        "description": "description-value"
      }
    ]
  }
}
```
In the request body, supply a JSON representation of [groupSettingTemplate](../resources/groupsettingtemplate.md) object.
##### Response

Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.groupSettingTemplate"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 324

{
  "groupSettingTemplate": {
    "displayName": "displayName-value",
    "description": "description-value",
    "values": [
      {
        "name": "name-value",
        "type": "type-value",
        "defaultValue": "defaultValue-value",
        "description": "description-value"
      }
    ],
    "id": "id-value"
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create groupsettingtemplate",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->