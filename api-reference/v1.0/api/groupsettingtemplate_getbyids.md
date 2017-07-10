# groupSettingTemplate: getbyids


### Prerequisites

The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /groupSettingTemplates/<id>/getByIds

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
|ids|String||
|types|String||

### Response

If successful, this method returns `200, OK` response code and [directoryObject](../resources/directoryobject.md) collection object in the response body.

### Example

##### Request

<!-- {
  "blockType": "request",
  "name": "groupsettingtemplate_getbyids"
}-->
```http
POST https://graph.microsoft.com/beta/groupSettingTemplates/<id>/getByIds
Content-type: application/json
Content-length: 70

{
  "ids": [
    "ids-value"
  ],
  "types": [
    "types-value"
  ]
}
```

##### Response
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryObject",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 55

{
  "value": [
    {
      "id": "id-value"
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "groupSettingTemplate: getbyids",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->