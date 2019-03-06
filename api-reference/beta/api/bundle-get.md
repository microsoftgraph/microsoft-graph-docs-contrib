---
author: rgregg
ms.author: rgregg
title: Get a bundle
localization_priority: Normal
ms.prod: "sharepoint"
---

# Get metadata for a bundle in OneDrive

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the metadata for a [bundle][] based on the bundle's unique ID.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (personal Microsoft account) | Files.Read, Files.ReadWrite, Files.Read.All, Files.ReadWrite.All    |

## HTTP request

```http
GET /drive/bundles/{bundle-id}
GET /drive/items/{bundle-id}
```

Because bundles are items, you can use the **items** collection to return metadata about a bundle.
You can also use the **bundles** collection as a convenience to ensure you're getting a bundle in response.

### Optional query parameters

You can use the [OData query parameters][odata-parameters] to restrict the shape of the objects returned from this call.

### Optional request headers

| Name          | Value | Description
|:--------------|:------|:---------------------------------------------------
| if-none-match | etag  | If this request header is included and the eTag (or cTag) provided matches the current tag on the file, an `HTTP 304 Not Modified` response is returned.

### Request body

Do not supply a request body with this method.

### Example

<!-- { "blockType": "request", "name": "get-bundle-metadata" } -->

```http
GET /drive/bundles/{bundle-id}
```

## Response

If successful, this method returns a [driveItem][driveItem] resource with the [bundle][bundle] in the response body.

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.driveItem", "truncated": true } -->

```json
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "0123456789abc",
  "name": "My Photo Album Bundle",
  "eTag": "etag",
  "cTag": "etag",
  "createdBy": { "user": { "id": "1234", "displayName": "Ryan Gregg" } },
  "createdDateTime": "datetime",
  "lastModifiedBy": { "user": { "id": "1234", "displayName": "Ryan Gregg" } },
  "lastModifiedDateTime": "datetime",
  "size": 1234,
  "webUrl": "http://onedrive.com/...",
  "bundle": {
    "childCount": 4,
     "album": { }
  }
}
```

**Note:** The response object is truncated for clarity.
All default properties will be returned from the actual call.

## Get a bundle and its children in a single call

You can use the [`expand`](/graph/query-parameters) query string parameter to include the children of a bundle in the same call as retrieving the metadata of a bundle.

### HTTP request for bundle and children

<!-- { "blockType": "request", "name": "get-bundle-and-children" } -->

```http
GET /drive/items/{bundle-id}?expand=children
```

### Response with bundle and children

This call will return the bundle metadata and a list of children of the bundle.
If the bundle has no children, it will return an empty collection.

If the number of children in the bundle is greater than the default page size, the `children@odata.nextLink` property will be returned with a URL that can be
used to request the next page of children in the bundle.

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.driveItem", "truncated": true } -->

```json
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "101230100alkc",
  "name": "My Cool Day at the Beach",
  "children": [
    { "id": "120100abab", "name": "image1.jpg", "file": {} },
    { "id": "120100abo1", "name": "image2.jpg", "file": {} }
  ],
  "children@odata.nextLink": "https://api.onedrive.com/v1.0/..."
}
```

**Note:** Response objects are truncated for clarity.
All default properties will be returned from the actual call.

## Error responses

See [Error Responses][error-response] for more info about how errors are returned.

[driveItem]: ../resources/driveItem.md
[error-response]: /graph/errors
[odata-parameters]: /graph/query-parameters
[bundle]: ../resources/bundle.md


<!-- {
  "type": "#page.annotation",
  "description": "Retrieve metadata about a bundle and its children in OneDrive",
  "keywords": "retrieve,item,bundle,metadata",
  "section": "documentation",
  "tocPath": "Bundles/Get Bundle Metadata"
} -->
