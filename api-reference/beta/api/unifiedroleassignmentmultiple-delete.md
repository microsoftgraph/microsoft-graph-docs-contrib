---
title: "Delete unifiedRoleAssignmentMultiple"
description: "Delete a unifiedRoleAssignmentMultiple object."
ms.localizationpriority: medium
author: "DougKirschner"
ms.reviewer: msodsrbac
ms.subservice: "entra-directory-management"
doc_type: "apiPageType"
ms.date: 04/05/2024
---

# Delete unifiedRoleAssignmentMultiple

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [unifiedRoleAssignmentMultiple](../resources/unifiedroleassignmentmultiple.md) object of an RBAC provider. 

This is applicable for a RBAC application that supports multiple principals and scopes. The following RBAC providers are currently supported:
- Cloud PC 
- device management (Intune)
- Defender (Microsoft Defender XDR Unified RBAC)

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

The following tables show the least privileged permission or permissions required to call this API on each supported resource type. Follow [best practices](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions) to request least privileged permissions. For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

### For Cloud PC provider

<!-- { "blockType": "permissions", "name": "unifiedroleassignmentmultiple_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/unifiedroleassignmentmultiple-delete-permissions.md)]

### For Device management (Intune) provider

<!-- { "blockType": "permissions", "name": "unifiedroleassignmentmultiple_delete_2" } -->
[!INCLUDE [permissions-table](../includes/permissions/unifiedroleassignmentmultiple-delete-2-permissions.md)]

### For Defender provider

<!-- { "blockType": "permissions", "name": "unifiedroleassignmentmultiple_delete_3" } -->
[!INCLUDE [permissions-table](../includes/permissions/unifiedroleassignmentmultiple-delete-3-permissions.md)]

## HTTP request

To delete a **unifiedRoleAssignmentMultiple** for a Cloud PC provider:
<!-- { "blockType": "ignored" } -->

```http
DELETE /roleManagement/cloudPC/roleAssignments/{id}
```

To delete a **unifiedRoleAssignmentMultiple** for an Intune provider:
<!-- { "blockType": "ignored" } -->

```http
DELETE /roleManagement/deviceManagement/roleAssignments/{id}
```

To delete a **unifiedRoleAssignmentMultiple** for a Defender provider:
<!-- { "blockType": "ignored" } -->

```http
DELETE /roleManagement/defender/roleAssignments/{id}
```

## Request headers

| Name | Description |
|:---- |:----------- |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code. It doesn't return anything in the response body.

## Example

### Example 1: Delete a unifiedRoleAssignmentMultiple in an Intune provider

The following example shows how to delete a [unifiedRoleAssignmentMultiple](../resources/unifiedroleassignmentmultiple.md) in an Intune provider.

### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_unifiedroleassignmentMultiple",
  "sampleKeys": ["lAPpYvVpN0KRkAEhdxReEJC2sEqbR_9Hr48lds9SGHI-1"]
}-->

```http
DELETE https://graph.microsoft.com/beta/roleManagement/deviceManagement/roleAssignments/lAPpYvVpN0KRkAEhdxReEJC2sEqbR_9Hr48lds9SGHI-1
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-unifiedroleassignmentmultiple-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-unifiedroleassignmentmultiple-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-unifiedroleassignmentmultiple-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-unifiedroleassignmentmultiple-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-unifiedroleassignmentmultiple-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/delete-unifiedroleassignmentmultiple-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/delete-unifiedroleassignmentmultiple-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```

### Example 2: Delete a unifiedRoleAssignmentMultiple in a Cloud PC provider

The following example shows how to delete a [unifiedRoleAssignmentMultiple](../resources/unifiedroleassignmentmultiple.md) in a Cloud PC provider.

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_unifiedroleassignmentMultiple_cloudpc"
}-->

```http
DELETE https://graph.microsoft.com/beta/roleManagement/cloudPC/roleAssignments/{id}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-unifiedroleassignmentmultiple-cloudpc-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-unifiedroleassignmentmultiple-cloudpc-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-unifiedroleassignmentmultiple-cloudpc-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-unifiedroleassignmentmultiple-cloudpc-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-unifiedroleassignmentmultiple-cloudpc-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/delete-unifiedroleassignmentmultiple-cloudpc-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/delete-unifiedroleassignmentmultiple-cloudpc-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Delete unifiedRoleAssignmentMultiple",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

### Example 3: Delete a unifiedRoleAssignmentMultiple in a Defender provider

The following example shows how to delete a [unifiedRoleAssignmentMultiple](../resources/unifiedroleassignmentmultiple.md) in a Defender provider.

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_unifiedroleassignmentMultiple_defender"
}-->

```http
DELETE https://graph.microsoft.com/beta/roleManagement/defender/roleAssignments/{id}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-unifiedroleassignmentmultiple-defender-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-unifiedroleassignmentmultiple-defender-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-unifiedroleassignmentmultiple-defender-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-unifiedroleassignmentmultiple-defender-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-unifiedroleassignmentmultiple-defender-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/delete-unifiedroleassignmentmultiple-defender-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```
