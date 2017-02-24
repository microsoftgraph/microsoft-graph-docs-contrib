# Create schemaExtension

Use this API to create a new schemaExtension.

## Prerequisites
The following **scopes** are required to execute this API: *Directory.AccessAsUser.All*

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /schemaExtensions
```

## Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer <token>. Required. |
| Content-Type  | application/json  |

## Request body
In the request body, supply a JSON representation of [schemaExtension](../resources/schemaextension.md) object.

The following table shows the properties that are required when you create a schema extension.

| Parameter | Type | Description|
|:---------------|:--------|:----------|
|description|String|Description for the schema extension.|
|id|String|The unique identifier for the schema extension definition. The value must be a concatenation of one of your verified domains (e.g. contoso.com) and a name for the schema extension - e.g. *contoso_mySchema*. |
|properties|[ExtensionSchemaProperty](../resources/extensionschemaproperty.md) collection|The collection of property names and types that make up the schema extension definition.|
|targetTypes|String collection|Set of Microsoft Graph types (that can support extensions) that the schema extension can be applied to.|

## Response
If successful, this method returns `201, Created` response code and [schemaExtension](../resources/schemaextension.md) object in the response body.

## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_schemaextension_from_schemaextensions"
}-->
```http
POST https://graph.microsoft.com/beta/schemaExtensions
Content-type: application/json
Content-length: 201

{
  "name": "name-value",
  "description": "description-value",
  "targetTypes": [
    "targetTypes-value"
  ],
  "properties": [
    {
      "name":"name-value",
      "type":"type-value"
    }
  ],
}
```
In the request body, supply a JSON representation of [schemaExtension](../resources/schemaextension.md) object.
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.schemaExtension"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 201

{
  "name": "name-value",
  "description": "description-value",
  "targetTypes": [
    "targetTypes-value"
  ],
  "properties": [
    {
      "name":"name-value",
      "type":"type-value"
    }
  ],
  "status": "InDevelopment",
  "owner": "owner-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create schemaExtension",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->