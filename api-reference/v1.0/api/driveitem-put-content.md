---
author: spgraph-docs-team
ms.date: 09/10/2017
title: Upload small files
ms.localizationpriority: high
ms.subservice: "sharepoint"
description: "Provide the contents of a new file or update the contents of an existing file in a single API call. "
doc_type: apiPageType
---
# Upload or replace the contents of a driveItem

Namespace: microsoft.graph

Provide the contents of a new file or update the contents of an existing file in a single API call.
This method only supports files up to 250 MB in size.

To upload large files, see [Upload large files with an upload session](driveitem-createuploadsession.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "driveitem_put_content" } -->
[!INCLUDE [permissions-table](../includes/permissions/driveitem-put-content-permissions.md)]

## HTTP request

### To replace an existing item
<!-- { "blockType": "ignored" } -->

```http
PUT /drives/{drive-id}/items/{item-id}/content
PUT /groups/{group-id}/drive/items/{item-id}/content
PUT /me/drive/items/{item-id}/content
PUT /sites/{site-id}/drive/items/{item-id}/content
PUT /users/{user-id}/drive/items/{item-id}/content
```

### To upload a new file

<!-- { "blockType": "ignored" } -->

```http
PUT /drives/{drive-id}/items/{parent-id}:/{filename}:/content
PUT /groups/{group-id}/drive/items/{parent-id}:/{filename}:/content
PUT /me/drive/items/{parent-id}:/{filename}:/content
PUT /sites/{site-id}/drive/items/{parent-id}:/{filename}:/content
PUT /users/{user-id}/drive/items/{parent-id}:/{filename}:/content
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|text/plain. Required.|

## Request body

The contents of the request body should be the binary stream of the file to be uploaded.

## Response

If successful, this method returns a [driveItem](../resources/driveitem.md) object in the response body for the newly created or updated file.

## Example (upload a new file)

This example uploads the string "The contents of the file goes here." to a file in the signed-in user's drive under FolderA named FileB.txt.

<!-- { "blockType": "request", "name": "upload-via-put", "scopes": "files.readwrite" } -->

```http
PUT /me/drive/root:/FolderA/FileB.txt:/content
Content-Type: text/plain

The contents of the file goes here.
```

### Response

If successful, this method returns an [driveItem][item-resource] resource in the response body for the newly created file.

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.driveItem", "truncated": true } -->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "0123456789abc",
  "name": "FileB.txt",
  "size": 35,
  "file": { }
}
```

## Example (updating an existing file)

This example replaces the contents of a file with a known ID.


# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "upload-via-put-id", "scopes": "files.readwrite" } -->

```http
PUT /me/drive/items/{item-id}/content
Content-Type: text/plain

The contents of the file goes here.
```

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/upload-via-put-id-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/upload-via-put-id-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/upload-via-put-id-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

If successful, this method returns an [driveItem][item-resource] resource in the response body for the newly created file.

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.driveItem", "truncated": true } -->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "0123456789abc",
  "name": "FileB.txt",
  "size": 35,
  "file": { }
}
```

## Error responses

See [Error Responses][error-response] for details about
how errors are returned.

[error-response]: /graph/errors
[item-resource]: ../resources/driveitem.md

<!-- {
  "type": "#page.annotation",
  "description": "Create a new file with content or update a file's content.",
  "keywords": "insert,upsert,update,upload",
  "section": "documentation",
  "suppressions": [
  ]
} -->

