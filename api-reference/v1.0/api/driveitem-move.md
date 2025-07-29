---
author: spgraph-docs-team
ms.date: 09/10/2017
title: Move a driveItem to a new folder
ms.localizationpriority: medium
ms.subservice: "sharepoint"
description: "To move a driveItem to a new parent item, your app requests to update the parentReference of the driveItem to move."
doc_type: apiPageType
---
# Move a driveItem to a new folder

Namespace: microsoft.graph

To move a driveItem to a new parent item, your app requests to update the **parentReference** of the DriveItem to move.

It is a special case of the [Update](driveitem-update.md) method.
Your app can combine moving an item to a new container and updating other properties of the item into a single request.

Items cannot be moved between [Drives](../resources/drive.md) using this request.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "driveitem_move" } -->
[!INCLUDE [permissions-table](../includes/permissions/driveitem-move-permissions.md)]

[!INCLUDE [app-permissions](../includes/sharepoint-embedded-app-driveitem-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /drives/{drive-id}/items/{item-id}
PATCH /groups/{group-id}/drive/items/{item-id}
PATCH /me/drive/items/{item-id}
PATCH /sites/{site-id}/drive/items/{item-id}
PATCH /users/{user-id}/drive/items/{item-id}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|
| if-match      | String. If this request header is included and the eTag (or cTag) provided doesn't match the current eTag on the folder, a `412 Precondition Failed` response is returned. |

## Request body

In the request body, supply the new value for the **parentReference** property.
Existing properties that aren't included in the request body maintain their previous values or be recalculated based on changes to other property values.
For best performance, you shouldn't include existing values that don't change.

**Note:** When moving items to the root of a drive, your app can't use the `"id:" "root"` syntax.
Your app needs to provide the actual ID of the root folder for the parent reference. For example, `/drives/{drive-id}/root`.

## Response

If successful, this method returns a `200 OK` response code and updated [driveItem](../resources/driveitem.md) resource in the response body.

## Example

This example moves an item specified by {item-id} into a folder in the user's drive with the ID `new-parent-folder-id`.


# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "move-item", "scopes": "files.readwrite", "tags": "service.graph" } -->

```http
PATCH https://graph.microsoft.com/v1.0/me/drive/items/{item-id}
Content-type: application/json

{
  "parentReference": {
    "id": "{new-parent-folder-id}"
  },
  "name": "new-item-name.txt"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/move-item-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/move-item-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/move-item-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/move-item-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/move-item-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/move-item-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/move-item-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response for this move request.

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.driveItem", "truncated": true } -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "0123456789abc",
  "name": "new-item-name.txt",
  "parentReference":
  {
    "driveId": "11231001",
    "path": "/drive/root:/Documents",
    "id": "1231203102!1011"
  }
}
```

## Error responses

See [Error responses][error-response] for more info about
how errors are returned.

[error-response]: /graph/errors

<!-- {
  "type": "#page.annotation",
  "description": "Move an item to another location or rename the item.",
  "keywords": "move,rename,mv,change location",
  "section": "documentation",
  "tocPath": "Items/Move",
  "suppressions": [
  ]
} -->

