---
author: JeremyKelley
ms.author: jeremyke
title: Create a bundle
localization_priority: Normal
ms.prod: "sharepoint"
---

# Create a bundle in OneDrive

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add a new [bundle][] to the user's drive.

[bundle]: ../resources/bundle.md

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (personal Microsoft account) | Files.ReadWrite, Files.ReadWrite.All    |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /drive/bundles
```

### Request body

In the request body, supply a JSON presentation of the bundle to be created.

### Example

Here is an example of how to create a basic new bundle.
This bundle can be used to share a collection of files with other users without sharing the folder those items are stored in.

<!-- { "blockType": "request", "name": "create-bundle" } -->

```json
POST /drive/bundles
Content-Type: application/json

{
  "name": "Just some files",
  "@name.conflictBehavior" : "rename",
  "bundle": { },
  "children": [
    { "id": "1234asdf" },
    { "id": "1234qwerty" }
  ]
}
```

This request will create a new bundle named `Just some files` and add two existing items to the bundle.

### Response

If the request is successful, the newly created bundle will be returned.

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.driveItem", "truncated": true } -->

```json
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "1234321!abc",
  "name": "Just some files",
  "bundle": {
    "childCount": 2
  }
}
```

**Note:** Response objects are truncated for clarity.
All default properties will be returned from the actual call.

### Album example

The request to create a new photo album is similar, although inside the bundle facet, the album property is set to a non-null value.

<!-- { "blockType": "request", "name": "create-album" } -->

```json
POST /drive/bundles
Content-Type: application/json

{
  "name": "My Day at the Beach",
  "@name.conflictBehavior" : "rename",
  "bundle": { "album": {} },
  "children": [
    { "id": "1234asdf" }
  ]
}
```

### Response

If the request is successful, the newly created album bundle will be returned.

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.driveItem", "truncated": true } -->

```json
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "1234321!abc",
  "name": "Just some files",
  "bundle": {
    "childCount": 2,
    "album": { }
 }
}
```

**Note:** Response objects are truncated for clarity.
All default properties will be returned from the actual call.

If _@microsoft.graph.conflictBehavior_ is set to **rename** and a bundle with the same name already exists, the new bundle name will be updated to be unique.
OneDrive will append a number to the end of the bundle name.

For example, `My Day at the Beach` would be renamed `My Day at the Beach 1`.
If `My Day at the Beach 1` is taken, then the number would be incremented again until a unique bundle name is discovered.

### Error response

Read the [Error Responses][error-response] topic for more info about how errors are returned.

[error-response]: /graph/errors

<!-- {
  "type": "#page.annotation",
  "description": "Create a new bundle or photo album.",
  "keywords": "create,bundle",
  "section": "documentation",
  "tocPath": "Bundles/Create"
} -->
