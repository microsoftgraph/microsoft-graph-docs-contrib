---
title: "Get agentIdentityBlueprintPrincipal"
description: "Read the properties and relationships of agentIdentityBlueprintPrincipal object."
author: "zallison22"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-agent-id"
doc_type: apiPageType
---

# Get agentIdentityBlueprintPrincipal

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of [agentIdentityBlueprintPrincipal](../resources/agentidentityblueprintprincipal.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentidentityblueprintprincipal-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentidentityblueprintprincipal-get-permissions.md)]

[!INCLUDE [rbac-agentid-apis-write](../includes/rbac-for-apis/rbac-agentid-apis-write.md)]

## HTTP request

You can address the agent identity blueprint principal using either its **id** or **appId**.
<!-- { "blockType": "ignored" } -->
```http
GET /servicePrincipals/{id}/microsoft.graph.agentIdentityBlueprintPrincipal
GET /servicePrincipals(appId='{appId}')/microsoft.graph.agentIdentityBlueprintPrincipal
```

## Optional query parameters

This method supports the `$count`, `$expand`, `$filter`, `$orderby`, `$search`, `$select`, and `$top` [OData query parameters](/graph/query-parameters) to help customize the response. Some queries are supported only when you use the **ConsistencyLevel** header set to `eventual` and `$count`. For more information, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries).

By default, this API doesn't return the public key value of the **key** in the **keyCredentials** property unless **keyCredentials** is specified in a `$select` query.
For example, `$select=id,appId,keyCredentials`.

The use of `$select` to get **keyCredentials** for agent blueprint principals has a throttling limit of 150 requests per minute for every tenant.

## Request headers

| Name           | Description                |
|:---------------|:---------------------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Accept-Language| Language code. Optional.   |

Providing the **Accept-Language** header with a supported language code, such as `es-ES` or `de-DE`, returns localized values where available.

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [agentIdentityBlueprintPrincipal](../resources/agentidentityblueprintprincipal.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_agentidentityblueprintprincipal"
}
-->
``` http
GET https://graph.microsoft.com/beta/servicePrincipals/{id}/microsoft.graph.agentIdentityBlueprintPrincipal
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-agentidentityblueprintprincipal-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.agentIdentityBlueprintPrincipal"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.type": "microsoft.graph.agentIdentityBlueprintPrincipal",
    "id": "f7c938db-8c3d-4d04-937b-456c3242ed95",
    "appId": "00001111-aaaa-2222-bbbb-3333cccc4444",
    "createdDateTime": "2019-09-17T19:10:35.2742618Z",
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
```

