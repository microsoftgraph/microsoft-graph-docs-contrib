---
title: "Remove service principal owner"
description: "Remove an owner from a servicePrincipals."
author: "sureshja"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
ms.date: 04/18/2024
---

# Remove service principal owner

Namespace: microsoft.graph

Remove an owner from a [servicePrincipal](../resources/serviceprincipal.md) object. As a recommended best practice, service principals should have at least two owners.


[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "serviceprincipal_delete_owners" } -->
[!INCLUDE [permissions-table](../includes/permissions/serviceprincipal-delete-owners-permissions.md)]

> [!IMPORTANT]
> 
> In delegated scenarios with work or school accounts, the signed-in user must be assigned a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) or a custom role with a supported role permission. The following least privileged roles are supported for this operation.
> - Hybrid Identity Administrator
> - Cloud Application Administrator
> - Application Administrator

## HTTP request

You can address the service principal using either its **id** or **appId**. **id** and **appId** are referred to as the **Object ID** and **Application (Client) ID**, respectively, in app registrations in the Microsoft Entra admin center.

<!-- { "blockType": "ignored" } -->
```http
DELETE /serviceprincipals/{id}/owners/{id}/$ref
DELETE /servicePrincipals(appId='{appId}')/owners/{id}/$ref
```

## Request headers
| Name | Description|
|:---- |:---------- |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
In the request body, supply the identifier of the directory object to be assigned as owner.

## Response

If successful, this method returns a `204 No Content` response code.

## Example

### Request

The following example shows the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "serviceprincipal_delete_owners_e1"
}-->

```http
DELETE https://graph.microsoft.com/v1.0/servicePrincipals/{id}/owners/{id}/$ref
Content-type: application/json

{
    "@odata.id": "https://graph.microsoft.com/v1.0/directoryObjects/{id}"
}

```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/serviceprincipal-delete-owners-e1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/serviceprincipal-delete-owners-e1-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/serviceprincipal-delete-owners-e1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/serviceprincipal-delete-owners-e1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/serviceprincipal-delete-owners-e1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/serviceprincipal-delete-owners-e1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/serviceprincipal-delete-owners-e1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/serviceprincipal-delete-owners-e1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Remove owner",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->

