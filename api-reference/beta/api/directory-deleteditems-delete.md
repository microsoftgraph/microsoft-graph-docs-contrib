---
title: "Permanently delete item (directory object)"
ms.date: 06/05/2026
description: "Permanently delete a recently deleted application, group, service principal, or user from deleted items."
author: "FaithOmbongi"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: apiPageType
---

# Permanently delete item (directory object)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Permanently delete a recently deleted directory object from [deleted items](../resources/directory.md). The following types are supported:
- [application](../resources/application.md)
- [agentIdentityBlueprint](../resources/agentidentityblueprint.md)
- [agentIdentity](../resources/agentidentity.md)
- [agentIdentityBlueprintPrincipal](../resources/agentidentityblueprintprincipal.md)
- [agentUser](../resources/agentuser.md)
- [certificateBasedAuthPki](../resources/certificatebasedauthpki.md)
- [certificateAuthorityDetail](../resources/certificateauthoritydetail.md)
- [device](../resources/device.md)
- [externalUserProfile](../resources/externaluserprofile.md)
- [group](../resources/group.md)
- [pendingExternalUserProfile](../resources/pendingexternaluserprofile.md)
- [servicePrincipal](../resources/serviceprincipal.md)
- [user](../resources/user.md)

After an item is permanently deleted, it **cannot** be restored.

Administrative units **cannot** be permanently deleted by using the **deletedItems** API. Soft-deleted administrative units will be permanently deleted 30 days after initial deletion unless they are restored.

> [!IMPORTANT]
> Hard deletion protection blocks permanent deletion of a protected [user](../resources/user.md) (excluding on-premises synchronized users), cloud-only [group](../resources/group.md), [application](../resources/application.md), or [servicePrincipal](../resources/serviceprincipal.md) for the first seven days after soft deletion. Protection is enabled by setting **isHardDeleteProtectionEnabled** to `true` on an existing object and can't be disabled.
>
> The object can still be soft deleted and [restored](../api/directory-deleteditems-restore.md). If a protected object is restored and then soft deleted again, a new seven-day protection period begins. After the protection period expires, an authorized caller can permanently delete the object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

The following table shows the least privileged permission or permissions required to call this API on each supported resource type. Follow [best practices](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions) to request least privileged permissions. For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

| Supported resource | Delegated (work or school account) | Delegated (personal Microsoft account) | Application |
|:-|:-|:-|:-|
| [application](../resources/application.md) | Application.ReadWrite.All | Not supported. | Application.ReadWrite.OwnedBy |
| [agentIdentity](../resources/agentidentity.md) | AgentIdentity.ReadWrite.All | Not supported. | AgentIdentity.ReadWrite.All |
| [agentIdentityBlueprint](../resources/agentidentityblueprint.md) | AgentIdentityBlueprint.ReadWrite.All | Not supported. | AgentIdentityBlueprint.ReadWrite.All |
| [agentIdentityBlueprintPrincipal](../resources/agentidentityblueprintprincipal.md) | AgentIdentityBlueprintPrincipal.ReadWrite.All | Not supported. | AgentIdentityBlueprintPrincipal.ReadWrite.All |
| [agentUser](../resources/agentuser.md) | AgentIdUser.ReadWrite.IdentityParentedBy | Not supported. | AgentIdUser.ReadWrite.IdentityParentedBy |
| [externalUserProfile](../resources/externaluserprofile.md) | ExternalUserProfile.ReadWrite.All | Not supported | ExternalUserProfile.ReadWrite.All |
| [certificateBasedAuthPki](../resources/certificatebasedauthpki.md) | PublicKeyInfrastructure.Read.All | Not supported. | PublicKeyInfrastructure.Read.All |
| [certificateAuthorityDetail](../resources/certificateauthoritydetail.md) | PublicKeyInfrastructure.Read.All | Not supported. | PublicKeyInfrastructure.Read.All |
| [device](../resources/device.md) | Device.ReadWrite.All | Not supported. | Device.ReadWrite.All |
| [group](../resources/group.md) | Group.ReadWrite.All | Not supported. | Not supported. |
| [pendingExternalUserProfile](../resources/pendingexternaluserprofile.md) | PendingExternalUserProfile.ReadWrite.All | Not supported | PendingExternalUserProfile.ReadWrite.All |
| [servicePrincipal](../resources/serviceprincipal.md) | Application.ReadWrite.All | Not supported. | Application.ReadWrite.OwnedBy |
| [user](../resources/user.md) | User.DeleteRestore.All | Not supported. |  User.DeleteRestore.All |

[!INCLUDE [rbac-directory-deleted-items-apis](../includes/rbac-for-apis/rbac-directory-deleted-items-apis.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
DELETE /directory/deletedItems/{id}
```

## Request headers
| Name       | Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Accept  | application/json |

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns `204 No Content` response code. It doesn't return anything in the response body.

If hard deletion protection is enabled and the object is still within the seven-day protection period, this method returns `409 Conflict` with the `Request_ConflictingRequest` error code. Wait until the protection period expires before trying to permanently delete the object.

## Examples

### Example 1: Permanently delete an item

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_directory_deleteditem"
}-->
```http
DELETE https://graph.microsoft.com/beta/directory/deletedItems/46cc6179-19d0-473e-97ad-6ff84347bbbb
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-directory-deleteditem-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-directory-deleteditem-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-directory-deleteditem-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-directory-deleteditem-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-directory-deleteditem-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/delete-directory-deleteditem-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/delete-directory-deleteditem-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 204 No Content
```

### Example 2: Attempt to permanently delete a protected item

#### Request

The following request attempts to permanently delete an object with **isHardDeleteProtectionEnabled** set to `true` before its seven-day protection period expires.

<!-- { "blockType": "request", "name": "delete_directory_deleteditem_hard_delete_protection" } -->
```http
DELETE https://graph.microsoft.com/beta/directory/deletedItems/46cc6179-19d0-473e-97ad-6ff84347bbbb
```

#### Response

<!-- { "blockType": "response", "truncated": true, "@odata.type": "microsoft.graph.error" } -->
```http
HTTP/1.1 409 Conflict
Content-Type: application/json

{
  "error": {
    "code": "Request_ConflictingRequest",
    "message": "The object cannot be permanently deleted because isHardDeleteProtectionEnabled is set to true.",
    "innerError": {
      "date": "2026-10-30T12:00:00",
      "request-id": "a9ee5607-56bd-4ce1-bcf5-66a11c8358b0",
      "client-request-id": "7fc3fe7b-2070-4f3f-8b0c-949ae8c03509"
    }
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Delete directory",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
