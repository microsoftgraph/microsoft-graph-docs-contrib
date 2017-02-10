# Create domainNameReference

Use this API to create a new domainNameReference.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /domains/<id>/domainNameReferences

```
### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|
| Content-Type  | application/json |

### Request body
In the request body, supply a JSON representation of [directoryObject](../resources/directoryobject.md) object.


### Response
If successful, this method returns `201, Created` response code and [directoryObject](../resources/directoryobject.md) object in the response body.

### Example
##### Request

<!-- {
  "blockType": "request",
  "name": "create_directoryobject_from_domain"
}-->
```http
POST https://graph.microsoft.com/beta/domains/<id>/domainNameReferences
Content-type: application/json
Content-length: 30

{
  "directoryObject": {
  }
}
```
In the request body, supply a JSON representation of [directoryObject](../resources/directoryobject.md) object.
##### Response
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryObject"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 51

{
  "directoryObject": {
    "id": "id-value"
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create domainNameReference",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->