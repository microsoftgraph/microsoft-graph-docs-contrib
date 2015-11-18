# Search for an item

Search the hierarchy of items in OneDrive for items matching a query. You can search and/or filter results to find the items your app is looking for.

Search returns matching results from the item specified in the URL and all
children of that item. Filtering works on the collection of items returned,
which can be either all children when using search, or just the immediate
children when using a collection.

### Prerequisites
One of the following **scopes** is required to execute this API:

  * Files.Read

### HTTP request
<!-- { "blockType": "ignored" } -->
```
GET /drive/root/Microsoft.Graph.search?q=vacation
GET /drive/items/{item-id}/Microsoft.Graph.search?q=vacation
GET /drive/root:/{item-path}:/Microsoft.Graph.search?q=vacation
```

### Optional query parameters
This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.

### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer <token>. Required. |


### Request body
Do not supply a request body for this method.

#### Query string parameters
| Name | Value  | Description                                                                                                                          |
|:-----|:-------|:-------------------------------------------------------------------------------------------------------------------------------------|
| `q`  | string | The query text used to search for items. Values may be matched across several fields including filename, metadata, and file content. |

### Example
Here is an example of how to call this API.
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "item_search"
}-->
```http
POST /drive/root/Microsoft.Graph.search?q={search=text}
```

##### Response
This method returns an object containing an array of [items](../resources/driveitem.md) that
match the search criteria. If no items were found, an empty array is returned.

If there are too many matches the response will be paged and an
**@odata.nextLink** property will contain a URL to the next page of results. You
can use the `top` query parameter to specify the number of items in the page.

<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.item",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
      {
        "id": "0123456789abc!123",
        "name": "Vacation photos",
        "folder": {},
        "searchResult":
        {
          "onClickTelemetryUrl": "https://bing.com/0123456789abc!123"
        }
      },
      {
        "id": "0123456789abc!456",
        "name": "Summer Vacation Rentals.docx",
        "file": {},
        "searchResult":
        {
          "onClickTelemetryUrl": "https://bing.com/0123456789abc!456"
        }
      }
    ],
    "@search.approximateCount": 12,
    "@odata.nextLink": "https://api.onedrive.com/drive/root/view.search?query=vacation&skipToken=1asdlnjnkj1nalkm!asd"
}
```

**Note:** In OneDrive for Business, this method will not return the following item properties:

* `createdBy`
* `modifiedBy`
* `parentReference`

For more info, see [Searching and filtering Items in OneDrive](https://dev.onedrive.com/items/search.htm).

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "item: search",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->