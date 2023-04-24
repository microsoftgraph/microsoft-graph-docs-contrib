---
title: "Delete unifiedRoleDefinition"
description: "Delete a unifiedRoleDefinition object."
ms.localizationpriority: medium
author: "DougKirschner"
ms.prod: "directory-management"
doc_type: "apiPageType"
---

# Delete unifiedRoleDefinition

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [unifiedRoleDefinition](../resources/unifiedRoleDefinition.md) object for an RBAC provider. You cannot delete built-in roles. This feature requires an Azure AD Premium P1 or P2 license.


The following RBAC providers are currently supported:
- Cloud PC
- device management (Intune)
- directory (Azure AD) 

## Permissions

Depending on the RBAC provider and the permission type (delegated or application) that is needed, choose from the following tables the least privileged permission required to call this API. To learn more, including [taking caution](/graph/auth/auth-concepts#best-practices-for-requesting-permissions) before choosing more privileged permissions, see [Permissions](/graph/permissions-reference). 

### For a Cloud PC provider

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | RoleManagement.ReadWrite.CloudPC, CloudPC.ReadWrite.All   |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | RoleManagement.ReadWrite.CloudPC, CloudPC.ReadWrite.All  |

### For a device management (Intune) provider

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  DeviceManagementRBAC.ReadWrite.All   |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | DeviceManagementRBAC.ReadWrite.All |

### For a directory (Azure AD) provider

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  RoleManagement.ReadWrite.Directory, Directory.ReadWrite.All   |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | RoleManagement.ReadWrite.Directory, Directory.ReadWrite.All |

## HTTP request

To delete a role definition for a device management provider:
<!-- { "blockType": "ignored" } -->
```http
DELETE /roleManagement/deviceManagement/roleDefinitions/{id}
```

To delete a role definition for a directory provider:
<!-- { "blockType": "ignored" } -->
```http
DELETE /roleManagement/directory/roleDefinitions/{id}

```

To delete a role definition for a Cloud PC provider:
<!-- { "blockType": "ignored" } -->
```http
DELETE /roleManagement/cloudPc/roleDefinitions/{id}

```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {token} |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns `204 No Content` response code. It does not return anything in the response body.

## Example 1: Delete a **unifiedRoleDefinition** resource for a directory provider

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_unifiedroledefinition",
  "sampleKeys": ["f189965f-f560-4c59-9101-933d4c87a91a"]
}-->

```http
DELETE https://graph.microsoft.com/beta/roleManagement/directory/roleDefinitions/f189965f-f560-4c59-9101-933d4c87a91a
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-unifiedroledefinition-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-unifiedroledefinition-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-unifiedroledefinition-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-unifiedroledefinition-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-unifiedroledefinition-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/delete-unifiedroledefinition-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

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
  "description": "Delete unifiedRoleDefinition",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

## Example 2: Delete a **unifiedRoleDefinition** resource for a Cloud PC provider
### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_unifiedroledefinition_cloudpc",
  "sampleKeys": ["b7f5ddc1-b7dc-4d37-abce-b9d6fc15ffff"]
}-->

```http
DELETE https://graph.microsoft.com/beta/roleManagement/cloudPC/roleDefinitions/b7f5ddc1-b7dc-4d37-abce-b9d6fc15ffff
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-unifiedroledefinition-cloudpc-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-unifiedroledefinition-cloudpc-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-unifiedroledefinition-cloudpc-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-unifiedroledefinition-cloudpc-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-unifiedroledefinition-cloudpc-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/delete-unifiedroledefinition-cloudpc-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```
