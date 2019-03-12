---
author: JeremyKelley
ms.author: jeremyke
title: Create a bundle from a folder
localization_priority: Normal
ms.prod: "sharepoint"
---

# Create a Bundle in OneDrive from a folder

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add a new bundle in a user's drive and set the bundle's children to be the children of a folder given the folder's item-id.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (personal Microsoft account) | Files.ReadWrite, Files.ReadWrite.All    |

## Http Request

<!-- { "blockType": "ignored" } -->

```http
POST /drive/bundles/createFromFolder
```

### Request headers

| Header name | Value  | Description
|:------------|:-------|:------------------------------------------------------
| _Prefer_    | string | Set to `respond-async` to enable asynchronous item transfer. Otherwise the request is aborted.

### Request body

The contents of the request body should be the JSON representation of the bundle to create from the folder's children.

### Example

In the request body, supply a JSON representation of a [Bundle][], as shown below.

<!-- { "blockType": "request", "name": "create-bundle-from-folder" } -->

```json
POST /drive/bundles/createFromFolder
Content-Type: application/json
Prefer: respond-async

{
  "name": "Just some files",
  "bundle": { },
  "@name.conflictBehavior": "rename",
  "children": ["123abc"]
}
```

### Response

The service will return immediately upon accepting the request and provide details about how to monitor the progress of the bundle creation.

<!-- { "blockType": "response" } -->

```http
HTTP/1.1 202 Accepted
Location: https://onedrive.com/monitor/113jlkjlkjasd1212abcascaf
```

The value of the `Location` header provides a URL that can be used to get the current state of the operation and let you know when the upload has finished.

### Create bundle response

To retrieve the current status of the bundle creation, issue a GET request to  the URL in the `Location` header.
If the response returns an `HTTP 202` then the body of the response is an [AsyncJobStatus][] resource that defines the current status of the job.

If the bundle has been created, the GET request will return an  `HTTP 303 See Other` response with a new `Location` header that will take you to the item resource for the created bundle.

### Error

If an error occurs and the transfer can't continue, the status URL will return an error.

[AsyncJobStatus]: ../resources/asyncJobStatus.md
[Bundle]: ../resources/bundle.md

<!-- {
  "type": "#page.annotation",
  "description": "Create a new bundle.",
  "keywords": "create,bundle",
  "section": "documentation",
  "tocPath": "Bundles/Create"
} -->
