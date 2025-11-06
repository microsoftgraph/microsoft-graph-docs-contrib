---
title: "List agentIdentityBlueprintPrincipal"
description: "Retrieve a list of agentIdentityBlueprintPrincipal objects."
author: "zallison22"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
---

# List agentIdentityBlueprintPrincipals

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

Retrieve a list of [agent identity blueprint principal](../resources/serviceprincipal.md) objects.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "serviceprincipal_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/serviceprincipal-list-permissions.md)]

[!INCLUDE [rbac-serviceprincipal-apis-read](../includes/rbac-for-apis/rbac-serviceprincipal-apis-read.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /servicePrincipals/Microsoft.Graph.AgentIdentityBlueprintPrincipal
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


<!-- {
  "blockType": "request",
  "name": "list_agent_identity_blueprint_principal"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/servicePrincipals/Microsoft.Graph.AgentIdentityBlueprintPrincipal
```

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
      "id": "String (identifier)",
      "accountEnabled": "Boolean",
      "createdByAppId": "String",
      "appDescription": "String",
      "appDisplayName": "String",
      "appId": "String",
      "appOwnerOrganizationId": "Guid",
      "appRoleAssignmentRequired": "Boolean",
      "disabledByMicrosoftStatus": "String",
      "displayName": "String",
      "publisherName": "String",
      "servicePrincipalNames": [
        "String"
      ],
      "servicePrincipalType": "String",
      "signInAudience": "String",
      "tags": [
        "String"
      ],
      "appRoles": [
        {
          "@odata.type": "microsoft.graph.appRole"
        }
      ],
      "info": {
        "@odata.type": "microsoft.graph.informationalUrl"
      },
      "publishedPermissionScopes": [
        {
          "@odata.type": "microsoft.graph.permissionScope"
        }
      ],
      "verifiedPublisher": {
        "@odata.type": "microsoft.graph.verifiedPublisher"
      }
    }
  ]
}
```


