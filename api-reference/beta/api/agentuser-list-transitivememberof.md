---
title: "List an agent user's memberships (direct and transitive)"
description: "Get groups, directory roles, and administrative units that the agent user is a member of through either direct or transitive membership."
author: "yyuank"
ms.reviewer: "iamut"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: entra-id
doc_type: apiPageType
---

# List transitiveMemberOf

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get [groups](../resources/group.md), [directory roles](../resources/directoryrole.md), and [administrative units](../resources/administrativeunit.md) that the [agentUser](../resources/agentuser.md) is a member of through either direct or transitive membership.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
|Permission type      | Least privileged permission | Higher privileged permissions |
|:--------------------|:---------------------------|:-----------------------------|
|Delegated (work or school account) | User.Read.All | AgentIdUser.ReadWrite.IdentityParentedBy, AgentIdUser.ReadWrite.All, User.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported. | Not supported.|
|Application | User.Read.All | AgentIdUser.ReadWrite.IdentityParentedBy, AgentIdUser.ReadWrite.All, User.ReadWrite.All |

[!INCLUDE [rbac-agent-user-apis-write](../includes/rbac-for-apis/rbac-agent-user-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /users/{usersId}/transitiveMemberOf
```

## Optional query parameters

This method supports the `$filter`, `$count`, `$select`, `$search`, `$top` [OData query parameters](/graph/query-parameters) to help customize the response.
- OData cast is also enabled. For example, you can cast to get just the transitive membership in groups.
- `$search` is supported on the **displayName** property only.
- The default and maximum page size is 100 and 999 objects respectively.
- The use of query parameters with this API is supported only with advanced query parameters. For more information, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [directoryObject](../resources/directoryobject.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_transitivememberof_agentuser"
}
-->
``` http
GET https://graph.microsoft.com/beta/users/{usersId}/transitiveMemberOf
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-transitivememberof-agentuser-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-transitivememberof-agentuser-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-transitivememberof-agentuser-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-transitivememberof-agentuser-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-transitivememberof-agentuser-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-transitivememberof-agentuser-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-transitivememberof-agentuser-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryObject"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.directoryObject",
      "id": "a6c034b8-621b-dee3-6abb-52cbce801fe9",
    }
  ]
}
```

