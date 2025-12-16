---
title: "List agentIdentityBlueprintPrincipal objects"
description: "Retrieve a list of agentIdentityBlueprintPrincipal objects."
author: "zallison22"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
---

# List agentIdentityBlueprintPrincipal objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of [agentIdentityBlueprintPrincipal](../resources/agentidentityblueprintprincipal.md) objects.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "agentidentityblueprintprincipal_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/agentidentityblueprintprincipal-list-permissions.md)]

[!INCLUDE [rbac-agentid-apis-write](../includes/rbac-for-apis/rbac-agentid-apis-write.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /servicePrincipals/microsoft.graph.agentIdentityBlueprintPrincipal
```

## Optional query parameters

This method supports the `$count`, `$expand`, `$filter`, `$orderby`, `$search`, `$select`, and `$top` [OData query parameters](/graph/query-parameters) to help customize the response. The default and maximum page size is 100 agent identity blueprint principal objects. Some queries are supported only when you use the **ConsistencyLevel** header set to `eventual` and `$count`. For more information, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries).

## Request headers

| Name | Description |
|:---- |:----------- |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| ConsistencyLevel | eventual. This header and `$count` are required when using `$search`, or in specific usage of `$filter`. For more information about the use of **ConsistencyLevel** and `$count`, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries). |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and collection of [agentIdentityBlueprintPrincipal](../resources/agentidentityblueprintprincipal.md) objects in the response body.

## Example

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_agent_identity_blueprint_principal"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/servicePrincipals/microsoft.graph.agentIdentityBlueprintPrincipal
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-agent-identity-blueprint-principal-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-agent-identity-blueprint-principal-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-agent-identity-blueprint-principal-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-agent-identity-blueprint-principal-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-agent-identity-blueprint-principal-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-agent-identity-blueprint-principal-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-agent-identity-blueprint-principal-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.agentIdentityBlueprintPrincipal",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.agentIdentityBlueprintPrincipal",
      "id": "f7c938db-8c3d-4d04-937b-456c3242ed95",
      "appId": "00001111-aaaa-2222-bbbb-3333cccc4444",
      "createdDateTime": "2019-09-17T19:10:35.2742618Z",
      "createdByAppId": "00000003-0000-0000-c000-000000000000",
      "accountEnabled": true,
      "appDisplayName": "My Sample App",
      "appOwnerOrganizationId": "aaaabbbb-0000-cccc-1111-dddd2222eeee",
      "appRoleAssignmentRequired": false,
      "appRoles": [],
      "disabledByMicrosoftStatus": null,
      "info": {
        "termsOfServiceUrl": null,
        "supportUrl": null,
        "privacyStatementUrl": null,
        "marketingUrl": null,
        "logoUrl": null
      },
      "oauth2PermissionScopes": [],
      "servicePrincipalType": "Application",
      "tags": [],
      "verifiedPublisher": null
    }
  ]
}
```


