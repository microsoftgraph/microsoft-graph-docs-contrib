---
author: JeremyKelley
ms.author: jeremyke
title: List bundles
localization_priority: Normal
ms.prod: "sharepoint"
---

# List bundles in a drive

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of all the [bundles][bundle] in a user's drive.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Not supported.                             |
|Delegated (personal Microsoft account) | Files.Read, Files.ReadWrite, Files.Read.All, Files.ReadWrite.All    |
|Application          | Not supported.                                           |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /drive/bundles
```

### Optional query parameters

This method supports the [OData Query Parameters][] to filter and shape the response.
One exception: when enumerating bundles, `expand=children` cannot be used.

## Example - List all bundles in a drive

To request an enumeration of all bundles defined in the drive, you can make a request to the **bundles** collection without any parameters.

<!-- { "blockType": "request", "name": "list-all-bundles", "tags": "service.onedrive" } -->

```http
GET /drive/bundles
```

### Response

If successful, this request returns the list of bundle items defined for the drive.

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.driveItem", "truncated": true, "isCollection": true } -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "id": "0123456789abc",
      "name": "Vacation photo album",
      "bundle": {
        "childCount": 1,
        "album": { }
      }
    },
    {
      "id": "0120310201abd",
      "name": "Family shared files",
      "bundle": {
        "childCount": 1
      }
    }
  ],
  "@odata.nextLink": "https://..."
}
```

**Note:** Response objects are truncated for clarity.
All default properties will be returned from the actual call.

## Example - List all photo albums in a drive

To filter the list of bundles returned from a request to the bundles collection you can use the `filter` query string parameter to specify the type of bundle to return by checking for the existence of a facet on the bundle:

<!-- {"blockType": "request", "name": "list-album-bundles", "tags": "service.onedrive" } -->

```http
GET /drive/bundles?filter=bundle/album%20ne%20null
```

### Response

The response to a GET to the bundles endpoint is an array of **DriveItem** resources with the [Bundle][].
Since all bundles are items, you can use use all the standard item operations on them.

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.driveItem", "truncated": true, "isCollection": true } -->

```json
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "id": "0123456789abc",
      "name": "Vacation photo album",
      "bundle": {
        "childCount": 1,
        "album": { }
      }
    },
    {
      "id": "120301010abcd",
      "name": "Seattle Center event",
      "bundle": {
        "childCount": 4,
        "album": { }
      },
      "tags": [
        {
          "name": "outside",
          "autoTagged": { }
        }
      ]
    }
  ]
}
```

**Note:** Response objects are truncated for clarity.
All default properties will be returned from the actual call.


### Error responses

See [Error Responses][error-response] for more info about how errors are returned.

[bundle]: ../resources/bundle.md
[driveItem]: ../resources/driveItem.md
[error-response]: /graph/errors
[OData Query Parameters]: /graph/query-parameters

<!-- {
  "type": "#page.annotation",
  "description": "List the bundles in a drive.",
  "keywords": "list,bundle,collection",
  "section": "documentation",
  "tocPath": "Bundles/List"
} -->
