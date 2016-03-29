# Copy a driveItem to a new location

Creates a copy of a [driveItem](../resources/driveitem.md) (including any
children), under a new parent or with a new name.

### Prerequisites
One of the following **scopes** is required to execute this API:

  * Files.ReadWrite

## HTTP request

<!-- { "blockType": "ignored" } -->
```
POST /me/drive/items/<id>/copy
POST /me/drive/root:/<path>:/copy
POST /groups/<id>/drive/items/<id>/copy
```

### Request headers

| Name          | Type   | Description                                                                                                                                                                                       |
|:--------------|:-------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Authorization | string | Bearer <token>. Required.                                                                                                                                                                         |

### Request body
In the request body, provide a JSON object with the following parameters.


| Name            | Value                                          | Description                                                                                                 |
|:----------------|:-----------------------------------------------|:------------------------------------------------------------------------------------------------------------|
| parentReference | [ItemReference](../resources/itemreference.md) | Optional. Reference to the parent item the copy will be created in.                                         |
| name            | string                                         | Optional. The new name for the copy. If this isn't provided, the same name will be used as the original.    |

**Note:** The _parentReference_ should include either an `id` or `path` but not
both. If both are included, they need to reference the same item or an error
will occur.

### Example

<!-- { "blockType": "request", "name": "copy-item", "scopes": "files.readwrite" } -->
```http
POST /me/drive/items/{item-id}/copy
Content-Type: application/json

{
  "parentReference": {
    "path": "/drive/root:/Documents"
  },
  "name": "foobar.txt"
}
```

## Response

Returns details about how to monitor the progress of the copy, upon accepting the request.

<!-- { "blockType": "response" } -->
```http
HTTP/1.1 202 Accepted
```

## Remarks

Copy is completed asynchronously. The response from the API will only indicate
that the copy operation was accepted or rejected, say due to the destination
filename already being in use. However, there is not a way to know when the
copy action has completed.

<!-- {
  "type": "#page.annotation",
  "description": "Create a copy of an existing item.",
  "keywords": "copy existing item",
  "section": "documentation",
  "tocPath": "OneDrive/Item/Copy"
} -->
