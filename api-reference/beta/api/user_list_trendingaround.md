# List trendingAround

Calculated insight that returns the list of items trending around the user. 
### Prerequisites
The following **scopes** are required to execute this API: 
*Sites.Read.All*
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /me/trendingAround
GET /users/<id | userPrincipalName>/trendingAround
GET /drive/root/createdByUser/trendingAround
GET /drive/root/lastModifiedByUser/trendingAround
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
If successful, this method returns a `200 OK` response code and collection of [item](../resources/item.md) objects in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_trendingaround"
}-->
```http
GET https://graph.microsoft.com/beta/me/trendingAround
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.driveitem",
  "isCollection": true
} -->
```http
Content-type: application/json
Content-length: 550

{
  "value": [
    {
      "content": "content-value",
      "createdBy": {
        "application": {
          "displayName": "displayName-value",
          "id": "id-value"
        },
        "device": {
          "displayName": "displayName-value",
          "id": "id-value"
        },
        "user": {
          "displayName": "displayName-value",
          "id": "id-value"
        }
      },
      "createdDateTime": "datetime-value",
      "cTag": "cTag-value",
      "description": "description-value",
      "eTag": "eTag-value"
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List trendingAround",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->