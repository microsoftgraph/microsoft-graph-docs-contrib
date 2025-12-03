---
title: "List agentCollections"
description: "Retrieves all agent collections in the agent registry for the tenant."
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
---

# List agentCollections

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieves all [agent collections](../resources/agentcollection.md) for the tenant.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentregistry-list-agentcollections-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentregistry-list-agentcollections-permissions.md)]

> [!IMPORTANT]
> In addition to the permissions listed in the preceding table, the following lesser-privileged permissions scoped to the special collections are supported for this API:
> - *AgentCollection.Read.Global* and *AgentCollection.ReadWrite.Global* for the **Global** collection
> - *AgentCollection.Read.Quarantined* and *AgentCollection.ReadWrite.Quarantined* for the **Quarantined** collection

[!INCLUDE [rbac-agentregistry-apis](../includes/rbac-for-apis/rbac-agentregistry-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /agentRegistry/agentCollections
```

## Optional query parameters

This method supports the `$select`, `$filter`, and `expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [agentCollection](../resources/agentcollection.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_agentcollection"
}
-->
``` http
GET https://graph.microsoft.com/beta/agentRegistry/agentCollections
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.agentCollection"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "Security Copilot Platform Workspace: 001",
      "ownerIds": [
        "daf58b0e-44e1-433c-b6b0-ca70cae320b8",
        "b9108c41-d2d2-4e78-b073-92f57b752bd0"
      ],
      "managedBy": "719cc904-9700-4e08-9941-fd826cc84c60",
      "originatingStore": "Microsoft Security Copilot",
      "createdBy": "d47bffae-411a-4de9-8548-05e79bc01f0d",
      "displayName": "Conditional Access Agents",
      "description": "Agents to manage your organization's conditional access policy",
      "createdDateTime": "2025-01-01T00:00:00.1234567Z",
      "lastModifiedDateTime": "2025-01-01T00:00:00.1234567Z"
    }
  ]
}
```

