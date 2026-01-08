---
title: "orgContact: retryServiceProvisioning"
description: "Retries orgContact service provisioning."
ms.localizationpriority: medium
author: "PaulEkirapa"
ms.subservice: "entra-sign-in"
doc_type: "apiPageType"
ms.date: 11/06/2024
---

# orgContact: retryServiceProvisioning

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retry the [orgContact](../resources/orgContact.md) service provisioning.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "orgcontact_retryserviceprovisioning" } -->
[!INCLUDE [permissions-table](../includes/permissions/orgcontact-retryserviceprovisioning-permissions.md)]

> [!IMPORTANT]
> In delegated scenarios with work or school accounts, the signed-in user must be assigned a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) or a custom role with a supported role permission. The following least privileged roles are supported for this operation.
> - Directory Writers
> - Intune Administrator
> - User Administrator

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /contacts/{id}/retryServiceProvisioning
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |

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
  "name": "orgcontact_retryserviceprovisioning"
}-->
```http
POST https://graph.microsoft.com/beta/contacts/{id}/retryServiceProvisioning
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/orgcontact-retryserviceprovisioning-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/orgcontact-retryserviceprovisioning-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/orgcontact-retryserviceprovisioning-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/orgcontact-retryserviceprovisioning-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/orgcontact-retryserviceprovisioning-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/orgcontact-retryserviceprovisioning-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/orgcontact-retryserviceprovisioning-python-snippets.md)]
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
