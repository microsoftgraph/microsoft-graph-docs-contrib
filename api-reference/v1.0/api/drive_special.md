# Get a special folder by name

Use the special collection to access a special folder by name.

Special folders provide simple aliases to access well-known folders in OneDrive
without the need to look up the folder by path (which would require localization),
or reference the folder with an ID. If a special folder is renamed or moved
to another location within the drive, this syntax will continue to find that
folder.

Special folders are automatically created the first time an application attempts
to write to one, if it doesn't already exist. If a user deletes one, it is
recreated when written to again.

**Note:**  If you have read-only permissions and request a special folder that
doesn't exist, you'll receive a `403 Forbidden` error.

### Prerequisites
One of the following **scopes** is required to execute this API:

  * Files.Read
  * Files.ReadWrite

### HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /me/drive/special/<name>
```
### Optional query parameters
This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters)
to help customize the response.

### Request headers

| Name          | Type   | Description               |
|:--------------|:-------|:--------------------------|
| Authorization | string | Bearer <token>. Required. |


### Request body
Do not supply a request body for this method.

### Response
If successful, this method returns a `200 OK` response code and a [driveItem](../resources/driveitem.md)
object in the response body.

### Example

##### Request
Here is an example of the request for the user's drives.

<!-- {
  "blockType": "request",
  "name": "get_drive_special"
}-->
```http
GET https://graph.microsoft.com/v1.0/me/drive/special/<name>
```

##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.driveItem"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "folder": { },
  "id": "s!lkjqwlkj124912049an",
  "name": "Photos",
  "specialFolder": { "name": "photos" },
  "webUrl": "https://contoso-my.sharepoint.com/personal/rgregg_contoso_com/Documents/Photos",
}
```

### Example HEAD requests for special folders

If you request a special folder that doesn't exist by using a GET request,
the special folder will be automatically created for you. You can test to see
if the special folder exists by using a HEAD request. If the folder doesn't
exist, the HEAD request will return a `404` response.

##### Request (folder does not exist)

<!-- { "blockType": "request", "name": "head-does-not-create-special-folder" } -->
```
HEAD /drive/special/{special-folder-name}
```

##### Response
<!-- {"blockType": "response"} -->
```
HTTP/1.1 404 Not Found
```

##### Request (folder does exist)

On the other hand, sending the same request when the folder already exists will
return a `200 OK` response.

<!-- { "blockType": "request", "name": "head-existing-special-folder", "scopes": "files.read" } -->
```
HEAD /drive/special/{special-folder-name}
```

##### Response

<!-- {"blockType": "response", "isEmpty": true } -->
```
HTTP/1.1 200 OK
```

## Remarks

To request the children of a special folder, you can request the `children`
collection or use the [expand](http://graph.microsoft.io/docs/overview/query_parameters) option
to expand the children collection.


<!-- {
  "type": "#page.annotation",
  "description": "List drives",
  "keywords": "",
  "section": "documentation",
  "tocPath": "OneDrive/Drive/Get special folder"
}-->
