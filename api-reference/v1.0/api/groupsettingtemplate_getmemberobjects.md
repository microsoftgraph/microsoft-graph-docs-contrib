# groupSettingTemplate: getmemberobjects


### Prerequisites

The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /groupSettingTemplates/<id>/getMemberObjects

```

### Request headers

| Name | Description |
|:---------------|:----------|
| Authorization  | string  | Bearer {token}. Required. |
| Content-Type  | application/json |

### Request body
In the request body, provide a JSON object with the following parameters.

| Parameter | Type | Description |
|:---------------|:--------|:----------|
|securityEnabledOnly|Boolean||

### Response

If successful, this method returns `200, OK` response code and String collection object in the response body.

### Example

##### Request

<!-- {
  "blockType": "request",
  "name": "groupsettingtemplate_getmemberobjects"
}-->
```http
POST https://graph.microsoft.com/beta/groupSettingTemplates/<id>/getMemberObjects
Content-type: application/json
Content-length: 33

{
  "securityEnabledOnly": true
}
```

##### Response
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "String",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 39

{
  "value": [
    "String-value"
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "groupSettingTemplate: getmemberobjects",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->