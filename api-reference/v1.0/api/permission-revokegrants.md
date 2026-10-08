---
author: spgraph-docs-team
title: "permission: revokeGrants"
description: "Revoke access to a listItem or driveItem granted via a sharing link by removing the specified driveRecipient entries from the link."
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
ms.date: 09/25/2026
---

# permission: revokeGrants

Namespace: microsoft.graph

Revoke access to a [listItem](../resources/listitem.md) or [driveItem](../resources/driveitem.md) granted via a sharing link by removing the specified [driveRecipient](../resources/driverecipient.md) entries from the link.

Recipients who already redeemed the link and recipients who only received an invitation both lose access. Revoking a grant removes the recipient from this sharing link only; it doesn't remove any access the recipient has through a different sharing link, a direct grant, or membership in a group that has access.

> [!NOTE]
> This action is only supported on sharing links that are scoped to specific users.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "permission_revokegrants" } -->
[!INCLUDE [permissions-table](../includes/permissions/permission-revokegrants-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /drives/{drive-id}/items/{item-id}/permissions/{perm-id}/revokeGrants
POST /groups/{group-id}/drive/items/{item-id}/permissions/{perm-id}/revokeGrants
POST /me/drive/items/{item-id}/permissions/{perm-id}/revokeGrants
POST /sites/{site-id}/drive/items/{item-id}/permissions/{perm-id}/revokeGrants
POST /sites/{site-id}/lists/{list-id}/items/{listItem-id}/driveItem/permissions/{perm-id}/revokeGrants
POST /users/{user-id}/drive/items/{item-id}/permissions/{perm-id}/revokeGrants
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|grantees|[driveRecipient](../resources/driverecipient.md) collection|Required. A collection of recipients whose access to the sharing link is revoked.|

## Response

If successful, this action returns a `200 OK` response code and a [permission](../resources/permission.md) in the response body that represents the updated state of the sharing link.

The **grantedToIdentitiesV2** property of the returned permission lists the recipients on the link after the specified grants are revoked.

This action applies only to sharing links. It can't be used to revoke a direct grant on an item; use [Delete permission](../api/permission-delete.md) instead. Supplying the identifier of a permission that isn't a sharing link returns a `400 Bad Request` response code.

The sharing link must be scoped to specific users. Links whose **scope** is `anonymous` or `organization` don't track individual grantees. Because these links have no individual grants to revoke, the request returns a `400 Bad Request` response code.

For more information about how errors are returned, see [Microsoft Graph error responses and resource types](/graph/errors).

## Examples

### Request

The following example shows how to revoke access for a single user on a sharing link.

<!-- { "blockType": "request", "name": "permission-revokegrants", "@odata.type": "microsoft.graph.permission", "scopes": "files.readwrite", "target": "action", "sampleKeys": ["016GVDAP3RCQS5VBQHORFIVU2ZMOSBL25U", "2687a7e0-1b4d-4656-ae32-a4ea393321e1"] } -->

```http
POST https://graph.microsoft.com/v1.0/me/drive/items/016GVDAP3RCQS5VBQHORFIVU2ZMOSBL25U/permissions/2687a7e0-1b4d-4656-ae32-a4ea393321e1/revokeGrants
Content-Type: application/json

{
  "grantees": [
    {
      "email": "ryan@contoso.com"
    }
  ]
}
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- { "blockType": "response", "truncated": true, "@odata.type": "microsoft.graph.permission" } -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "2687a7e0-1b4d-4656-ae32-a4ea393321e1",
  "roles": ["write"],
  "grantedToIdentitiesV2": [
    {
      "user": {
        "id": "e6842c7e-33a1-4207-8b5a-2710922ac2b2",
        "displayName": "Megan Bowen"
      },
      "siteUser": {
        "id": "12",
        "displayName": "Megan Bowen",
        "loginName": "Megan Bowen"
      }
    }
  ],
  "link": {
    "type": "edit",
    "scope": "users",
    "webUrl": "https://contoso-my.sharepoint.com/personal/ellen_contoso_com/..."
  }
}
```

<!-- {
  "type": "#page.annotation",
  "description": "Revoke access to a sharing link for the specified recipients",
  "keywords": "permission, permissions, sharing, revoke, revoke access, sharing link",
  "section": "documentation",
  "tocPath": "Sharing/Revoke grants"
} -->
