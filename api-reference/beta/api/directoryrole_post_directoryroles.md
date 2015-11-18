# Create DirectoryRole

Use this API to create a new DirectoryRole.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /directoryObjects

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer <token>. Required. |

### Request body
In the request body, supply a JSON representation of [DirectoryRole](../resources/directoryrole.md) object.


### Response
If successful, this method returns `201, Created` response code and [DirectoryRole](../resources/directoryrole.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_directoryrole_from_directoryroles"
}-->
```http
POST https://graph.microsoft.com/beta/directoryRoles
Content-type: application/json
Content-length: 153

{
  "directoryRole": {
    "description": "description-value",
    "displayName": "displayName-value",
    "roleTemplateId": "roleTemplateId-value"
  }
}
```
In the request body, supply a JSON representation of [directoryRole](../resources/directoryrole.md) object.
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryrole"
} -->
```http
Content-type: application/json
Content-length: 175

{
  "directoryRole": {
    "description": "description-value",
    "displayName": "displayName-value",
    "roleTemplateId": "roleTemplateId-value",
    "id": "id-value"
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create DirectoryRole",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->