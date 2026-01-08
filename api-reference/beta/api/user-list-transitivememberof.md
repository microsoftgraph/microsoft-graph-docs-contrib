---
title: "List a user's memberships (direct and transitive)"
description: "Get groups, directory roles, and administrative units that the user is a member of through either direct or transitive membership."
ms.localizationpriority: medium
author: "yuhko-msft"
ms.reviewer: "mbhargav, khotzteam, aadgroupssg"
ms.subservice: entra-users
doc_type: apiPageType
ms.date: 10/22/2024
---

# List a user's memberships (direct and transitive)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get [groups](../resources/group.md), [directory roles](../resources/directoryrole.md), and [administrative units](../resources/administrativeunit.md) that the user is a member of through either direct or transitive membership.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

### Permissions for the signed-in user's memberships

<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
[!INCLUDE [permissions-table](../includes/permissions/user-list-transitivememberof-permissions.md)]

### Permissions for another user's memberships

<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
[!INCLUDE [permissions-table](../includes/permissions/user-list-transitivememberof-2-permissions.md)]

[!INCLUDE [limited-info](../../includes/limited-info.md)]

> [!TIP]
> - Calling the `/me/transitiveMemberOf` endpoint requires a signed-in user and therefore a delegated permission. Application permissions are not supported when you use the `/me/transitiveMemberOf` endpoint.
> - To list the members of a group with hidden membership, the `Member.Read.Hidden` permission is required.

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /me/transitiveMemberOf
```

[!INCLUDE [me-apis-sign-in-note](../includes/me-apis-sign-in-note.md)]

<!-- { "blockType": "ignored" } -->
```http
GET /users/{id | userPrincipalName}/transitiveMemberOf
```

## Optional query parameters

This method supports the `$filter`, `$count`, `$select`, `$search`, `$top` [OData query parameters](/graph/query-parameters) to help customize the response.
- OData cast is also enabled. For example, you can cast to get just the transitive membership in groups.
- `$search` is supported on the **displayName** property only.
- The default and maximum page size is 100 and 999 objects respectively.
- The use of query parameters with this API is supported only with advanced query parameters. For more information, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries).

## Request headers

| Header           | Value                                                                                                                                                                                                             |
| :--------------- | :---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| ConsistencyLevel | eventual. This header and `$count` are required when using the `$search`, `$filter`, `$orderby`, or OData cast query parameters. It uses an index that might not be up-to-date with recent changes to the object. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and collection of [directoryObject](../resources/directoryobject.md) objects in the response body.

## Examples

### Example 1: Get groups, directory roles, and administrative units that the user is a member of

#### Request

The following example shows a request.

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "get_transitivememberof"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/users/{id}/transitiveMemberOf
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-transitivememberof-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-transitivememberof-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-transitivememberof-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-transitivememberof-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-transitivememberof-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-transitivememberof-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-transitivememberof-python-snippets.md)]
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
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#directoryObjects",
  "value":[
    {
      "@odata.type":"#microsoft.graph.group",
      "displayName":"All_Contoso_Licensing",
      "mailEnabled":true,
      "mailNickname":"ContosoMailNickName",
      "securityEnabled":true
    },
    {
      "@odata.type":"#microsoft.graph.group",
      "displayName":"ContosoAudience_PugetSound",
      "mailEnabled":true,
      "mailNickname":"Contoso_PugetSound",
      "securityEnabled":true
    }
  ]
}
```

### Example 2: Get only a count of transitive membership in groups, directory roles, and administrative units

#### Request

The following example shows a request.

<!-- {
  "blockType": "ignored",
  "name": "get_count_only"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/users/{id}/transitiveMemberOf/$count
ConsistencyLevel: eventual
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryObject",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: text/plain

893
```

### Example 3: Use OData cast to get only a count of transitive membership in groups

#### Request

The following example shows a request.

<!-- {
  "blockType": "ignored",
  "name": "get_count_only"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/users/{id}/transitiveMemberOf/microsoft.graph.group/$count
ConsistencyLevel: eventual
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 200 OK
Content-type: text/plain

588
```

### Example 4: Use $search and OData cast to get transitive membership in groups with display names that contain the letters 'tier' including a count of returned objects

#### Request

The following example shows a request.

<!-- {
  "blockType": "ignored",
  "name": "get_tier_count"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/users/{id}/transitiveMemberOf/microsoft.graph.group?$count=true&$orderby=displayName&$search="displayName:tier"&$select=displayName,id
ConsistencyLevel: eventual
```

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.group)"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#groups(displayName,id)",
  "@odata.count":7,
  "value":[
    {
      "displayName":"Contoso-tier Query Notification",
      "id":"11111111-2222-3333-4444-555555555555"
    }
  ]
}
```

### Example 5: Use $filter and OData cast to get transitive membership in groups with a display name that starts with 'a' including a count of returned objects

#### Request

The following example shows a request.

<!-- {
  "blockType": "ignored",
  "name": "list_users_transitivememberof_startswith"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/users/{id}/transitiveMemberOf/microsoft.graph.group?$count=true&$orderby=displayName&$filter=startswith(displayName, 'a')
ConsistencyLevel: eventual
```

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.group",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#groups",
  "@odata.count":76,
  "value":[
    {
      "displayName":"AAD Contoso Users",
      "mail":"AADContoso_Users@contoso.com",
      "mailEnabled":true,
      "mailNickname":"AADContoso_Users",
      "securityEnabled":true
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List transitiveMsemberOf",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
