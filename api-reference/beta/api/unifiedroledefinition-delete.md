---
title: "Delete unifiedRoleDefinition"
description: "Delete a unifiedRoleDefinition object."
ms.localizationpriority: medium
author: "abhijeetsinha"
ms.prod: "directory-management"
doc_type: "apiPageType"
---

# Delete unifiedRoleDefinition

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [unifiedRoleDefinition](../resources/unifiedRoleDefinition.md) object for an RBAC provider.

The following RBAC providers are currently supported:
- cloud PC
- device management (Intune)
- directory (Azure AD) 

## Permissions

Depending on the RBAC provider and the permission type (delegated or application) that is needed, choose from the following table the least privileged permission required to call this API. To learn more, including [taking caution](/graph/auth/auth-concepts#best-practices-for-requesting-permissions) before choosing more privileged permissions, see [Permissions](/graph/permissions-reference). 

### For Cloud PC provider

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | CloudPC.ReadWrite.All   |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | CloudPC.ReadWrite.All  |

### For Device management (Intune) provider

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  DeviceManagementRBAC.ReadWrite.All   |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | DeviceManagementRBAC.ReadWrite.All |

### For Directory (Azure AD) provider

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  RoleManagement.ReadWrite.Directory, Directory.ReadWrite.All, Directory.AccessAsUser.All   |
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

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {token} |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns `204 No Content` response code. It does not return anything in the response body.

## Example1: Deletes a **unifiedRoleDefinition** for a directory provider

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_unifiedroledefinition"
}-->

```http
DELETE https://graph.microsoft.com/beta/roleManagement/directory/roleDefinitions/f189965f-f560-4c59-9101-933d4c87a91a
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-unifiedroledefinition-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-unifiedroledefinition-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/delete-unifiedroledefinition-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-unifiedroledefinition-java-snippets.md)]
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

## Example2: Deletes a **unifiedRoleDefinition** for a CloudPC provider
### Request

<!-- {
  "blockType": "request",
  "name": "delete_unifiedroledefinition_cloudpc"
}-->

```http
DELETE https://graph.microsoft.com/beta/roleManagement/cloudPc/roleDefinitions/b7f5ddc1-b7dc-4d37-abce-b9d6fc15ffff
```

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```
