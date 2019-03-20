---
author: JeremyKelley
ms.author: jeremyke
title: Update a bundle
localization_priority: Normal
ms.prod: "sharepoint"
---

# Update a bundle in OneDrive

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the metadata for a bundle in OneDrive by ID.
Only some Bundle metadata may be updated:

* Bundle's name
* Album's `coverSourceId` (if applicable)

If any other changes are attempted, they will be ignored.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Not supported.                             |
|Delegated (personal Microsoft account) | Files.ReadWrite, Files.ReadWrite.All   |
|Application          | Not supported.                                           |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /drive/items/{bundle-id}
```

### Optional request headers

| Name     | Value | Description
|:---------|:------|:--------------------------------------------------------
| if-match | etag  | If this request header is included and the eTag provided does not match the current eTag on the buncle, a `412 Precondition Failed` response is returned.

### Request body

In the request body, supply the values for relevant fields that should be
updated. Existing properties that are not included in the request body
will maintain their previous values or be recalculated based on changes to other
property values. For best performance you shouldn't include existing values
that haven't changed.

### Example

This example renames a bundle.

<!-- { "blockType": "request", "name": "rename-bundle" } -->

```json
PATCH /drive/items/{bundle-id}
Content-Type: application/json

{
  "name": "Shared legal agreements"
}
```

### Response

If successful, this method returns a [DriveItem][] resource that represents the updated Bundle in the response body.

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.driveItem", "truncated": true } -->

```json
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "0123456789abc",
  "name": "Shared legal agreements",
  "bundle": {
    "childCount": 3
  }
}
```

**Note:** The response object is truncated for clarity.
All default properties will be returned from the actual call.

### Error responses

See [Error Responses][error-response] for details about how errors are returned.

[error-response]: /graph/errors
[driveItem]: ../resources/driveItem.md

<!-- {
  "type": "#page.annotation",
  "description": "Update or replace the contents or properties of a bundle.",
  "keywords": "update,replace,contents,bundle",
  "section": "documentation",
	"tocPath": "Bundles/Update"
} -->
