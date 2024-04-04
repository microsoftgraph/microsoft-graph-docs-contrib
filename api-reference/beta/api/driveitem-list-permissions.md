---
author: spgraph-docs-team
description: "List the effective sharing permissions of on a driveItem."
ms.date: 09/10/2017
title: List sharing permissions on a driveItem
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
ms.topic: reference
---
# List sharing permissions on a driveItem

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List the effective sharing permissions on a [driveItem](../resources/driveitem.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Access to sharing permissions

The permissions collection includes potentially sensitive information and may not be available for every caller.

* For the owner of the item, all sharing permissions are returned. It includes co-owners.
* For a non-owner caller, only the sharing permissions that apply to the caller are returned.
* Sharing permission properties that contain secrets (for example, `shareId` and `webUrl`) are only returned for callers that are able to create the sharing permission.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "driveitem_list_permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/driveitem-list-permissions-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /drives/{drive-id}/items/{item-id}/permissions
GET /groups/{group-id}/drive/items/{item-id}/permissions
GET /me/drive/items/{item-id}/permissions
GET /me/drive/root:/{path}:/permissions
GET /sites/{siteId}/drive/items/{itemId}/permissions
GET /users/{userId}/drive/items/{itemId}/permissions
```

## Optional query parameters

This method supports the `$select` [OData Query Parameters](/graph/query-parameters) to customize the response.

## Optional request headers

| Name          | Type   | Description                                                                                                                                     |
|:--------------|:-------|:------------------------------------------------------------------------------------------------------------------------------------------------|
| if-none-match | string | If this request header is included and the etag provided matches the current etag on the item, an `HTTP 304 Not Modified` response is returned. |

## Response

If successful, this method returns a `200 OK` response code and collection of [Permission](../resources/permission.md) resources in the response body.

Effective sharing permissions of a driveItem can come from two sources:

* Sharing permissions applied directly on the driveItem itself
* Sharing permissions inherited from the driveItem's ancestors

Callers can differentiate if the permission is inherited or not by checking the **inheritedFrom** property.
This property is an [**itemReference**](../resources/itemreference.md) resource referencing the ancestor that the permission is inherited from.

## Example

This example retrieves the collection of permissions on an item in the signed in user's drive.


# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "get-item-permissions", "scopes": "files.read" } -->

```msgraph-interactive
GET /me/drive/items/{item-id}/permissions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-item-permissions-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-item-permissions-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-item-permissions-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-item-permissions-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-item-permissions-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-item-permissions-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-item-permissions-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-item-permissions-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

This example response includes three permissions, the first is a sharing link with edit permissions, the second is an explicit permission for a user named John, which was inherited from a parent folder, and the third is a read-write sharing link created by an application.

<!-- {"blockType": "response", "@odata.type": "Collection(microsoft.graph.permission)", "truncated": true} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json


{
  "value": [
    {
      "id": "1",
      "roles": ["write"],
      "link": {
        "webUrl": "https://onedrive.live.com/redir?resid=5D33DD65C6932946!70859&authkey=!AL7N1QAfSWcjNU8&ithint=folder%2cgif",
        "type": "edit"
      }
    },
    {
      "id": "2",
      "@deprecated.GrantedTo": "GrantedTo has been deprecated. Refer to GrantedToV2",
      "roles": ["write"],
      "grantedTo": {
        "user": {
          "id": "5D33DD65C6932946",
          "displayName": "Robin Danielsen"
        }
      },
      "grantedToV2": {
        "user": {
          "id": "5D33DD65C6932946",
          "displayName": "Robin Danielsen"
        },
        "siteUser": {
          "id": "1",
          "displayName": "Robin Danielsen",
          "loginName": "Robin Danielsen"
        }
      },
      "inheritedFrom": {
        "driveId": "1234567890ABD",
        "id": "1234567890ABC!123",
        "path": "/drive/root:/Documents" }
    },
    {
      "id": "3",
      "roles": ["write"],
      "link": {
        "webUrl": "https://onedrive.live.com/redir?resid=5D33DD65C6932946!70859&authkey=!AL7N1QAfSWcjNU8&ithint=folder%2cgif",
        "type": "edit",
        "application": {
          "id": "12345",
          "displayName": "Contoso Time Manager"
        }
      }
    }
  ]
}
```

## Remarks

The **permissions** relationship of driveItem can't be expanded as part of a call to [get driveItem](driveitem-get.md) or a collection of driveItems.
You must access the permissions property directly.

## Error responses

Read the [Error responses][error-response] topic for more information about
how errors are returned.

[error-response]: /graph/errors

<!--
{
  "type": "#page.annotation",
  "description": "List an item's permissions",
  "keywords": "permission, permissions, sharing",
  "section": "documentation",
  "tocPath": "Sharing/Permissions",
  "suppressions": [
  ]
}
-->
