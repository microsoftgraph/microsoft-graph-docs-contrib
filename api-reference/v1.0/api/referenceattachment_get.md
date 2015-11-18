# Get referenceAttachment

Retrieve the properties and relationships of referenceattachment object.
### Prerequisites
One of the following **scopes** is required to execute this API:

* If accessing attachments in Messages: _Mail.Read_
* If accessing attachments in Events: _Calendars.Read_
 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /users/<id | userPrincipalName>/events/<id>/attachments/<id>
GET /groups/<objectId>/events/<id>/attachments/<id>
GET /users/<id | userPrincipalName>/messages/<id>/attachments/<id>
```
### Optional query parameters
This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.
### Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Bearer <token>. Required. |

### Request body
Do not supply a request body for this method.
### Response
If successful, this method returns a `200 OK` response code and [referenceAttachment](../resources/referenceattachment.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_referenceattachment"
}-->
```http
GET https://graph.microsoft.com/v1.0/me/events/<id>/attachments/<id>
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.referenceattachment"
} -->
```http
Content-type: application/json
Content-length: 215

{
  "value": [
    {
      "@odata.type": "#Microsoft.OutlookServices.ReferenceAttachment",
      "contentType": "contentType-value",
      "lastModifiedDateTime": "datetime-value",
      "id": "id-value",
      "isInline": false,
      "name": "name-value",
      "size": 99,
      "SourceUrl": "ReferenceAttachmentProviders-value",
      "ProviderType": "ThumbnailURL-value",
      "ThumbnailUrl": "ThumbnailURL-value",
      "PreviewUrl": "PreviewURL-value",
      "Permission": "ReferenceAttachmentPermissions-value",
      "IsFolder": "False"

    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get referenceAttachment",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->