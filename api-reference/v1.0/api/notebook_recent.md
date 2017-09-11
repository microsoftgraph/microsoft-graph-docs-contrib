# List recent notebooks

Retrieve a list of [notebook](../resources/notebook.md) that have been recently used by the signed in user. 

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Notes.Read, Notes.ReadWrite, Notes.Read.All, Notes.ReadWrite.All,|
|Delegated (personal Microsoft account) | Notes.Read, Notes.ReadWrite, Notes.Read.All, Notes.ReadWrite.All    |
|Application | Notes.Read.All, Notes.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->
```
GET me/notes/notebooks/getrecentnotebooks(includePersonalNotebooks=true)
```

## Request body
Do not supply a request body for this method.

## Example

<!-- { "blockType": "request", "name": "recent_notebooks", "scopes": "notes.read" } -->
```http
GET https://graph.microsoft.com/v1.0/onenote/notebooks/getrecentnotebooks(includePersonalNotebooks={include})
```
The parameter `include` can be set to `true` to include notebooks owned by the user.

## Response
Here is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.notebook",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-Length: 1110

{
  ...
  "value":[
    {
      "name":"SharingClass","lastAccessedTime":"2017-05-02T15:29:36.7363799Z","links":{
        "oneNoteClientUrl":{
          "href":"onenote:https://oneeco-my.sharepoint.com/personal/admin_oneeco_onmicrosoft_com/Documents/Class%20Notebooks/SharingClass"
        },"oneNoteWebUrl":{
          "href":"https://oneeco-my.sharepoint.com/personal/admin_oneeco_onmicrosoft_com/Documents/Class%20Notebooks/SharingClass"
        }
      },"sourceService":"Unknown"
    },{
      "name":"OneDriveForBusinessNotebook1","lastAccessedTime":"2017-04-28T18:31:06Z","links":{
        "oneNoteClientUrl":{
          "href":"onenote:https://oneeco-my.sharepoint.com/personal/oneeco_onmicrosoft_com/Documents/OneDriveForBusinessNotebook1"
        },"oneNoteWebUrl":{
          "href":"https://oneeco-my.sharepoint.com/personal/oneeco_onmicrosoft_com/Documents/OneDriveForBusinessNotebook1"
        }
      },"sourceService":"OneDriveForBusiness"
    }
  ]
  ...
}
```