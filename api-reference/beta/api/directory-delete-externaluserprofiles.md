---
title: "Delete externalUserProfile"
description: "Delete an externalUserProfile object."
ms.localizationpriority: medium
doc_type: apiPageType
author: "jkdouglas"
ms.subservice: "entra-directory-management"
ms.topic: reference
---

# Delete externalUserProfile

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete an [externalUserProfile](../resources/externaluserprofile.md) object.

**Note:** To permanently delete the externalUserProfile, follow [permanently delete an item](directory-deleteditems-delete.md). To restore an externalUserProfile, follow [restore a deleted item](directory-deleteditems-restore.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "directory-delete-externaluserprofiles-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/directory-delete-externaluserprofiles-permissions.md)]

[!INCLUDE [rbac-externaluserprofiles-apis-write](../includes/rbac-for-apis/rbac-externaluserprofiles-apis-write.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /directory/externalUserProfiles/{id}
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

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_externalUserProfile"
}
-->

``` http
DELETE https://graph.microsoft.com/beta/directory/externalUserProfiles/{id}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-externaluserprofile-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/delete-externaluserprofile-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-externaluserprofile-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-externaluserprofile-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-externaluserprofile-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-externaluserprofile-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/delete-externaluserprofile-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/delete-externaluserprofile-python-snippets.md)]
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
