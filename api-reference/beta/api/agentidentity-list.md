---
title: "List agentIdentities"
description: "Retrieve a list of agentIdentities objects."
author: "zallison22"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
---

# List agentIdentities

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of [agentIdentity](../resources/agentidentity.md) objects.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "serviceprincipal_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/serviceprincipal-list-permissions.md)]

[!INCLUDE [rbac-serviceprincipal-apis-read](../includes/rbac-for-apis/rbac-serviceprincipal-apis-read.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /servicePrincipals
```

## Optional query parameters

This method supports the `$count`, `$expand`, `$filter`, `$orderby`, `$search`, `$select`, and `$top` [OData query parameters](/graph/query-parameters) to help customize the response. The default and maximum page size is 100 agent identity objects. Some queries are supported only when you use the **ConsistencyLevel** header set to `eventual` and `$count`. For more information, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries).

By default, this API doesn't return the value of the **key** in the **keyCredentials** property when listing all agent identities. To retrieve the public key info in **key**, the **keyCredentials** property must be specified in a `$select` query. For example, `$select=id,appId,keyCredentials`.

The use of `$select` to get **keyCredentials** for agent identities has a throttling limit of 150 requests per minute for every tenant.

## Request headers

| Name | Description |
|:---- |:----------- |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| ConsistencyLevel | eventual. This header and `$count` are required when using `$search`, or in specific usage of `$filter`. For more information about the use of **ConsistencyLevel** and `$count`, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries). |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and collection of [agentIdentity](../resources/agentidentity.md) objects in the response body.

## Examples

### Example 1: Get a list of agent identities

#### Request

<!-- {
  "blockType": "request",
  "name": "list_serviceprincipal"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/servicePrincipals/Microsoft.Graph.AgentIdentity
```

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.servicePrincipal",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "id": "1b7313c4-05d0-4a08-88e3-7b76c003a0a2",
      "displayName": "My Agent Identity",
      "createdDateTime": "2019-09-17T19:10:35.2742618Z",
      "createdByAppId": "631a96bc-a705-4eda-9f99-fdaf9f54f6a2",
      "agentIdentityBlueprintId": "631a96bc-a705-4eda-9f99-fdaf9f54f6a2",
      "accountEnabled": true,
      "disabledByMicrosoftStatus": null,
      "servicePrincipalType": "ServiceIdentity",
      "tags": [],
      "lifecycle": {
        "expirationDateTime": "2024-12-31T23:59:59Z"
      }
    }
  ]
}
```
