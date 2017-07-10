# Update groupSettingTemplate

Update the properties of groupsettingtemplate object.
### Prerequisites

The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /groupSettingTemplates/<id>
```
### Optional request headers
| Name | Description |
|:-----------|:-----------|
| Authorization  | string  | Bearer {token}. Required. |
| Content-Type	| application/json	|

### Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property | Type | Description |
|:---------------|:--------|:----------|
|description|String||
|displayName|String||
|values|settingTemplateValue||

### Response

If successful, this method returns a `200 OK` response code and updated [groupSettingTemplate](../resources/groupsettingtemplate.md) object in the response body.
### Example

##### Request

<!-- {
  "blockType": "request",
  "name": "update_groupsettingtemplate"
}-->
```http
PATCH https://graph.microsoft.com/beta/groupSettingTemplates/<id>
Content-type: application/json
Content-length: 250

{
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
```
##### Response
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.groupSettingTemplate"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 270

{
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
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update groupSettingTemplate",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->