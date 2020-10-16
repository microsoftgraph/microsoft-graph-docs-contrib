---
title: "permission: revokeGrants"
description: "Update an item's sharing permissions"
author: "learafa"
localization_priority: Normal
ms.prod: "sharepoint"
doc_type: apiPageType
---

# permission: revokeGrants
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Revoke access to a [ListItem][] or [DriveItem][] granted via a sharing link by removing the specified [Grantees][] from the link.
**Note**: This functionality is only available for sharing links scoped to users.

[ListItem]: ../resources/listItem.md
[DriveItem]: ../resources/driveItem.md
[Grantees]: ../resources/DriveRecipient.md

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|Files.ReadWrite, Files.ReadWrite.All, Sites.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported|
|Application|Files.ReadWrite.All, Sites.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /drives/{drive-id}/items/{item-id}/permissions/{perm-id}/revokeGrants
POST /groups/{group-id}/drive/items/{item-id}/permissions/{perm-id}/revokeGrants
POST /me/drive/items/{item-id}/permissions/{perm-id}/revokeGrants
POST /sites/{site-id}/drive/items/{item-id}/permissions/{perm-id}/revokeGrants
POST /sites/{site-id}/lists/{list-id}/items/{listItem-id}/permissions/{perm-id}/revokeGrants
POST /users/{user-id}/drive/items/{item-id}/permissions/{perm-id}/revokeGrants
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|grantees|[driveRecipient](../resources/driverecipient.md) collection|A collection of recipients who will be revoked access to the sharing link.|

## Response

If successful, this action returns a `200 OK` response code and a [permission](../resources/permission.md) in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "permission-revokegrants"
}
-->
``` http
POST /me/drive/items/{item-id}/permissions/{perm-id}/revokeGrants

Content-Type: application/json
Content-length: 95

{
  "grantees": [
    {
      "email": "ryan@contoso.com"
    }
  ]
}
```


### Response
**Note:** The response object shown here might be shortened for readability.

If successful, this method returns a [Permission](../resources/permission.md) resource in the response body that represents the updated state of the sharing link.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.permission"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "123ABC",
  "roles": ["write"],
  "link": {
    "type": "edit",
    "scope": "users",
    "webUrl": "https://contoso-my.sharepoint.com/personal/ellen_contoso_com/...",
    "application": {
      "id": "1234",
      "displayName": "Sample Application"
    },
  }
}
```

## Error responses

See [Error Responses][error-response] for details about how errors are returned.

[error-response]: /graph/errors

<!-- {
  "type": "#page.annotation",
  "description": "Update an item's sharing permissions",
  "keywords": "permission, permissions, sharing, change permissions, update permission",
  "section": "documentation",
  "tocPath": "Sharing/Update permission"
} -->
