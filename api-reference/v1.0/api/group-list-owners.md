---
title: "List group owners"
description: "Retrieve a list of the group's owners. The owners are a set of non-admin users who are allowed to modify the group object. "
ms.localizationpriority: high
author: "yuhko-msft"
ms.reviewer: "mbhargav, khotzteam, aadgroupssg"
ms.subservice: "entra-groups"
doc_type: apiPageType
ms.date: 06/21/2024
---

# List group owners

Namespace: microsoft.graph

Retrieve a list of the group's owners. The owners are a set of users or service principals who are allowed to modify the group object. Owners are currently not available in Microsoft Graph for groups that were created in Exchange, distribution groups, or groups that are synchronized from an on-premises environment.

> **Note:** Currently, service principals are not listed as group owners due to the staged rollout of service principals to the Microsoft Graph v1.0 endpoint.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "group_list_owners" } -->
[!INCLUDE [permissions-table](../includes/permissions/group-list-owners-permissions.md)]

[!INCLUDE [limited-info](../../includes/limited-info.md)]

In delegated scenarios, the signed-in user must also be assigned a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) or a custom role with the `microsoft.directory/groups/owners/read` role permission. The following least privileged roles are supported for this operation:

- Group owners
- "Member" users
- "Guest" users - have [limited read permissions](/entra/fundamentals/users-default-permissions?context=graph/context#compare-member-and-guest-default-permissions)
- Directory Readers
- Directory Writers
- Groups Administrator
- User Administrator
- Exchange Administrator - for Microsoft 365 groups only
- SharePoint Administrator - for Microsoft 365 groups only
- Teams Administrator - for Microsoft 365 groups only
- Yammer Administrator - for Microsoft 365 groups only
- Intune Administrator - for security groups only

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /groups/{id}/owners
```

## Optional query parameters

This method supports the `$filter`, `$count`, `$select`, `$search`, `$top`, and `$expand` [OData query parameters](/graph/query-parameters) to help customize the response.
- OData cast is enabled. For example, `/groups/{id}/members/microsoft.graph.user` retrieves group owners that are users.
- `$search` is supported on the **displayName** and **description** properties only.
- The use of query parameters with this API, except for `$expand`, is supported only with advanced query parameters. `$expand` isn't supported with advanced query parameters. For more information, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries).

## Request headers

| Name          | Type   | Description               |
| :------------ | :----- | :------------------------ |
| Authorization | string |Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and collection of [user](../resources/user.md) objects in the response body.

## Example

#### Request

The following example shows a request.

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "group_get_owners"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/groups/02bd9fd6-8f93-4758-87c3-1fb73740a315/owners
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/group-get-owners-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/group-get-owners-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/group-get-owners-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/group-get-owners-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/group-get-owners-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/group-get-owners-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/group-get-owners-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#directoryObjects",
    "value": [
        {
            "@odata.type": "#microsoft.graph.user",
            "id": "4562bcc8-c436-4f95-b7c0-4f8ce89dca5e",
            "accountEnabled": true,
            "displayName": "MOD Administrator",
            "userPrincipalName": "admin@contoso.com"
        },
        {
            "@odata.type": "#microsoft.graph.user",
            "id": "f0206b06-7c5d-461c-ae24-08f68b7ef463",
            "accountEnabled": true,
            "displayName": "Megan Bowen",
            "userPrincipalName": "MeganB@contoso.com"
        },
        {
            "@odata.type": "#microsoft.graph.user",
            "id": "5c70937c-d9ea-4a47-8852-ab77630f803d",
            "accountEnabled": true,
            "displayName": "Diego Siciliani",
            "userPrincipalName": "DiegoS@contoso.com"
        }
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List owners",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->
