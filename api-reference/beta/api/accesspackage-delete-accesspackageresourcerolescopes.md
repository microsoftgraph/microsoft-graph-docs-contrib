---
title: "Remove resourceRoleScope from an access package"
description: "Remove a resourceRoleScope from an access package."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.prod: "governance"
doc_type: "apiPageType"
---

# Remove resourceRoleScope from an accessPackage

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remove a [accessPackageResourceRoleScope](../resources/accesspackageresourcerolescope.md) from an [accessPackage](../resources/accesspackage.md) list of resource role scopes.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | EntitlementManagement.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | EntitlementManagement.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /identityGovernance/entitlementManagement/accessPackages/{id}/accessPackageResourceRoleScopes/{id}
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer \{token\}. Required. |

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
