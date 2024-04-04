---
title: "Remove resourceRoleScope from an access package"
description: "Remove a resourceRoleScope from an access package."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.subservice: "entra-id-governance"
doc_type: "apiPageType"
ms.topic: reference
---

# Remove resourceRoleScope from an accessPackage

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remove a [accessPackageResourceRoleScope](../resources/accesspackageresourcerolescope.md) from an [accessPackage](../resources/accesspackage.md) list of resource role scopes.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "accesspackage_delete_accesspackageresourcerolescopes" } -->
[!INCLUDE [permissions-table](../includes/permissions/accesspackage-delete-accesspackageresourcerolescopes-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /identityGovernance/entitlementManagement/accessPackages/{id}/accessPackageResourceRoleScopes/{id}
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a 200-series response code. It doesn't return anything in the response body.

## Examples

### Request

Here's an example  of the request.

<!-- {
  "blockType": "request",
  "name": "delete_accesspackageresourcerolescope_from_accesspackage"
}-->

```http
DELETE https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackages/{id}/resourceRoleScopes/{id}
```


### Response

Here's an example  of the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```
