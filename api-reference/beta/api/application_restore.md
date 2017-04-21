# application: restore


## Prerequisites
One of the following **scopes** is required to execute this API: *Directory.ReadWrite.All* or *Directory.AccessAsUser.All*
## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /applications/{id}/restore

```
## Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer &lt;token&gt; *Required*  |

## Request body
In the request body, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|identifierUris|String||

## Response
If successful, this method returns `200, OK` response code and [application](../resources/application.md) object in the response body.

## Example
Here is an example of how to call this API.
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "application_restore"
}-->
```http
POST https://graph.microsoft.com/beta/applications/{id}/restore
Content-type: application/json
Content-length: 56

{
  "identifierUris": [
    "identifierUris-value"
  ]
}
```

##### Response

Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryObject"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 22

{
  "id": "id-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "application: restore",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->