---
title: "List agentCollection members"
description: "Return the list of agent instance members for the specified collection."
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
---

# List agentCollection members

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Return the list of [agent instances](../resources/agentinstance.md) that are members for the specified [agentCollection](../resources/agentcollection.md). This API returns only the **agentCollection** and doesn't support using $select to return other properties. Attempting to select more properties returns a `400 Bad Request` error code.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentcollection-list-members-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentcollection-list-members-permissions.md)]

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
GET /agentRegistry/agentInstances/{agentInstanceId}/collections/{agentCollectionId}/members
```

## Optional query parameters

This method supports the `$select` and `$count` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [agentInstance](../resources/agentinstance.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_agentcollection_members"
}
-->
``` http
GET https://graph.microsoft.com/beta/agentRegistry/agentInstances/{agentInstanceId}/collections/{agentCollectionId}/members
```


### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.agentInstance"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "Security Copilot Platform Agent: 00123",
      "managedBy": "719cc904-9700-4e08-9941-fd826cc84c60",
      "originatingStore": "Microsoft Security Copilot",
      "displayName": "Conditional Access Agent",
      "agentIdentityBlueprintId": "cc08c41-d2d2-4e78-b073-92f57b752bd0",
      "agentIdentityId": "cd108c41-d2d2-4e78-b073-92f57b752bd0",
      "agentUserId": null
    },
    {
      "id": "Security Copilot Platform Agent: 00222",
      "managedBy": "719cc904-9700-4e08-9941-fd826cc84c60",
      "originatingStore": "Microsoft Security Copilot",
      "displayName": "Conditional Access Agent",
      "agentIdentityBlueprintId": "ab108c41-d2d2-4e78-b073-92f57b752bd0",
      "agentIdentityId": "ac108c41-d2d2-4e78-b073-92f57b752bd0",
      "agentUserId": null
    }
  ]
}
```

