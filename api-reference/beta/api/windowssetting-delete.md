---
title: "Delete windowsSetting"
description: "Delete all windowsSetting objects of a user."
author: "ndyc1107"
ms.date: 03/11/2025
ms.localizationpriority: medium
ms.subservice: "project-rome"
doc_type: apiPageType
---

# Delete windowsSetting

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete all [windowsSetting](../resources/windowssetting.md) objects of a user.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "windowssetting_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/windowssetting-delete-permissions.md)]

>[!NOTE]
> The calling user must be assigned the _Microsoft 365 Backup Administrator_ [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
DELETE /users/{user-id}@{tenant-id}/settings/windows
```

> [!NOTE]
> The `{tenant-id}` value must match the tenant ID of the calling user. To find your tenant ID, see [How to find your Microsoft Entra tenant ID](/entra/fundamentals/how-to-find-tenant) 

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

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_windowssetting",
  "sampleKeys": ["87d349ed-44d7-43e1-9a83-5f2406dee5bd@4562bcc8-c436-4f95-b7c0-4f8ce89dca5e"]
}
-->
```http
DELETE https://graph.microsoft.com/beta/users/87d349ed-44d7-43e1-9a83-5f2406dee5bd@4562bcc8-c436-4f95-b7c0-4f8ce89dca5e/settings/windows
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-windowssetting-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```

