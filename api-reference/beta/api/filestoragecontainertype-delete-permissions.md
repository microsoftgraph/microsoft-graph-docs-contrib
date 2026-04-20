---
title: "Delete permission from a fileStorageContainerType"
description: "Delete a user permission from a fileStorageContainerType by deleting the specified permission resource."
author: "grjoseph"
ms.date: 02/27/2026
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# Delete permission from a fileStorageContainerType

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a user [permission](../resources/permission.md) from a [fileStorageContainerType](../resources/filestoragecontainertype.md) by deleting the specified permission resource. Only existing owners (users with the `owner` role in the **permissions** collection of the container type), SharePoint Embedded Administrators, or Global Administrators can remove permissions.

Owners can remove other owners' permissions but can't remove their own permission. To remove their own permission, an owner must be a SharePoint Embedded Administrator or Global Administrator.

> [!NOTE]
> * Guest users can't be recipients of container type permissions.
> * Guest users can't perform this operation.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "filestoragecontainertype-delete-permissions-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainertype-delete-permissions-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /storage/fileStorage/containerTypes/{fileStorageContainerTypeId}/permissions/{permissionId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request to remove a permission from a container type.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_permission_filestoragecontainertype"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/storage/fileStorage/containerTypes/de988700-d700-020e-0a00-0831f3042f00/permissions/b3duZXJfMTExMTExMTEtMTExMS0xMTExLTExMTEtMTExMTExMTExMTEx
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-permission-filestoragecontainertype-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-permission-filestoragecontainertype-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-permission-filestoragecontainertype-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-permission-filestoragecontainertype-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-permission-filestoragecontainertype-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/delete-permission-filestoragecontainertype-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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

