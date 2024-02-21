---
title: "Delete pendingExternalUserProfile"
description: "Delete a pendingExternalUserProfile object."
ms.localizationpriority: medium
doc_type: apiPageType
author: "jkdouglas"
ms.prod: "directory-management"
---

# Delete pendingExternalUserProfile

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [pendingExternalUserProfile](../resources/pendingexternaluserprofile.md) object.

**Note:** To permanently delete the pendingExternalUserProfile, follow [permanently delete an item](directory-deleteditems-delete.md). To restore a pendingExternalUserProfile, follow [restore a deleted item](directory-deleteditems-restore.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "directory-delete-pendingexternaluserprofiles-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/directory-delete-pendingexternaluserprofiles-permissions.md)]

[!INCLUDE [rbac-externaluserprofiles-apis-write](../includes/rbac-for-apis/rbac-externaluserprofiles-apis-write.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
DELETE /directory/pendingExternalUserProfiles/{id}
```

## Request headers

|Name|Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns `204 No Content` response code.

## Example

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "delete_pendingExternalUserProfile"
}
-->

``` http
DELETE https://graph.microsoft.com/beta/directory/pendingExternalUserProfiles/{id}
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```
