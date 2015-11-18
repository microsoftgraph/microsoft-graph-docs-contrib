# Assign manager

Assign the user's manager. Returns the user or contact assigned as the user's manager.
### Prerequisites
One of the following **scopes** is required to execute this API: 
*User.ReadWrite.All; Directory.ReadWrite.All; Directory.AccessAsUser.All*

### HTTP request
<!-- { "blockType": "ignored" } -->
```http
PUT /users/<id | userPrincipalName>/manager
```
### Request headers
| Header       | Value|
|:-----------|:------|:----------|
| Authorization  | Bearer <token>. Required.  |
| Accept  | application/json|

### Request body
Do not supply a request body for this method.
### Response
If successful, this method returns a `200 OK` response code and collection of [directoryObject](../resources/directoryobject.md) objects in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_manager"
}-->
```http
PUT https://graph.microsoft.com/v1.0/users/<id | userPrincipalName>/manager
```
##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.directoryobject",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "objectType": "User",
  "id": "111048d2-2761-4347-b978-07354283363b",
  "accountEnabled": true,
  ...
  "city": "San Diego",
  "country": "United States",
  "department": "Sales & Marketing",
  "displayName": "Sara Davis",
  "givenName": "Sara",
  "jobTitle": "Finance VP",
  "mail": "SaraD@contoso.onmicrosoft.com",
  "mailNickname": "SaraD",
  ...
  "state": "CA",
  "streetAddress": "9256 Towne Center Dr., Suite 400",
  "surname": "Davis",
  "usageLocation": "US",
  "userPrincipalName": "SaraD@contoso.onmicrosoft.com",
  ...
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List directReports",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->