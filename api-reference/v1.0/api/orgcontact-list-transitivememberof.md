---
title: "List transitiveMemberOf"
description: "Get groups that the organizational contact is a member of. This API request is transitive, and will also return all groups the user is a nested member of."
author: "dkershaw10"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: apiPageType
ms.date: 07/30/2024
---

# List transitiveMemberOf

Namespace: microsoft.graph

Get groups that this [organizational contact](../resources/orgcontact.md) is a member of. The API request is transitive, and returns all groups the organizational contact is a nested member of.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
[!INCLUDE [permissions-table](../includes/permissions/orgcontact-list-transitivememberof-permissions.md)]

> [!IMPORTANT]
> In delegated scenarios with work or school accounts, the signed-in user must be assigned a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) or a custom role with a supported role permission. The following least privileged roles are supported for this operation.
> - Directory Readers
> - Global Reader
> - Directory Writers
> - Intune Administrator
> - User Administrator

[!INCLUDE [limited-info](../../includes/limited-info.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /contacts/{id}/transitiveMemberOf
```

## Optional query parameters

This method supports the `$filter`, `$count`, `$select`, `$search`, and `$top` [OData query parameters](/graph/query-parameters) to help customize the response.
- OData cast is enabled. For example, `/contacts/{id}/transitiveMemberOf/microsoft.graph.group` retrieves only groups the contact is a member of, directly or indirectly.
- `$search` is supported on the **displayName** property only.
- The default and maximum page size is 100 and 999 group objects respectively.
- The use of query parameters with this API is supported only with advanced query parameters. For more information, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries).

## Request headers

| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Accept  | application/json|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [directoryObject](../resources/directoryobject.md) objects in the response body.

## Example

### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "orgcontact_list_transitivememberof"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/contacts/e63333f5-3d11-4026-8fe3-c0f7b044dd3a/transitiveMemberOf
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/orgcontact-list-transitivememberof-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/orgcontact-list-transitivememberof-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/orgcontact-list-transitivememberof-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/orgcontact-list-transitivememberof-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/orgcontact-list-transitivememberof-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/orgcontact-list-transitivememberof-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/orgcontact-list-transitivememberof-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note**: The response object shown here might be shortened for readability. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryObject",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.group",
      "id": "id-value",
      "createdDateTime": null,
      "description": "All users at the company",
      "displayName": "All Users",
      "groupTypes": [],
      "mailEnabled": false,
      "securityEnabled": true,
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List orgContact transitiveMemberOf",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->

