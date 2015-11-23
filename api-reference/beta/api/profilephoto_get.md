# Get profilePhoto

Read the photo and properties of profilePhoto object.
### Prerequisites
One of the following **scopes** is required to execute this API for: 
* Profile photo of signed-in **user** - *User.Read; User.ReadBasic.All; User.Read.All; User.ReadWrite.All; User.Read*
* Profile photo of a **group** - *Group.Read.All; Group.ReadWrite.All* 
* Photo of a **contact** - *Contacts.Read; Contacts.ReadWrite*
### HTTP request to get the photo
<!-- { "blockType": "ignored" } -->
```http
GET /me/photo/$value
GET /users/<id>/photo/$value
GET /users/<userPrincipalName>/photo/$value
GET /groups/<id>/photo/$value
GET /me/contacts/<id>/photo/$value
GET /users/<id>/contacts/<id>/photo/$value
GET /users/<userPrincipalName>/contacts/<id>/photo/$value
GET /me/contactfolders/<contactFolderId>/contacts/<id>/photo/$value
GET /users/<id>/contactfolders/<contactFolderId>/contacts/<id>/photo/$value
GET /users/<userPrincipalName>/contactFolders/<contactFolderId>/contacts/<id>/photo/$value
```
### HTTP request to get the metadata of the photo
<!-- { "blockType": "ignored" } -->
```http
GET /me/photo
GET /users/<id>/photo
GET /users/<userPrincipalName>/photo
GET /groups/<id>/photo
GET /me/contacts/<id>/photo
GET /users/<id>/contacts/<id>/photo
GET /users/<userPrincipalName>/contacts/<id>/photo
GET /me/contactfolders/<contactFolderId>/contacts/<id>/photo
GET /users/<id>/contactfolders/<contactFolderId>/contacts/<id>/photo
GET /users/<userPrincipalName>/contactFolders/<contactFolderId>/contacts/<id>/photo
```
### Optional query parameters
This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.

### Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Sample-Header  | string  | Sample HTTP header. Update accordingly or remove if not needed|

### Response for getting the photo
If successful, this method returns a `200 OK` response code and binary data of the requested photo.  If no photo exists, the operation returns `404 Not Found`.
### Response for getting the metadata of the photo
If successful, this method returns a `200 OK` response code and [profilePhoto](../resources/profilePhoto.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_photo"
}-->
```http
GET https://graph.microsoft.com/beta/users/<id>/photo
```
##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.photo"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 53

{
  "height": 96,
  "width": 96,
  "id": "96X96"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get profilePhoto",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->