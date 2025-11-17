---
title: "Add agentInstance to agentCollection"
description: "Add an agentInstance to an agentCollection."
author: "jasondou"
ms.date: 11/14/2025
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
---

# Add agentInstance to agentCollection

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add an [agentInstance](../resources/agentinstance.md) to an [agentCollection](../resources/agentcollection.md).To add multiple agentInstance in batch, consider using [JSON batching](/graph/json-batching).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentcollection-post-members-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentcollection-post-members-permissions.md)]

> [!IMPORTANT]
> In addition to the permissions listed in the preceding table, the following lesser-privileged permissions scoped to the special collections are supported for this API:
> - For the **Global** collection: *AgentCollection.ReadWrite.Global* and *AgentInstance.Read.All*; *AgentCollection.ReadWrite.Global* and *AgentInstance.ReadWrite.All*
> - For the **Quarantined** collection: *AgentCollection.ReadWrite.Quarantined* and *AgentInstance.Read.All*; *AgentCollection.ReadWrite.Quarantined* and *AgentInstance.ReadWrite.All*

[!INCLUDE [rbac-agentregistry-apis](../includes/rbac-for-apis/rbac-agentregistry-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /agentRegistry/agentInstances/{agentInstanceId}/collections/{agentCollectionId}/members/$ref
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON object that contains a **@odata.id** property with a reference by ID to an [agentInstance](../resources/agentinstance.md).

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "add_agentinstance_to_agentcollection"
}
-->
``` http
POST https://graph.microsoft.com/beta/agentRegistry/agentInstances/{agentInstanceId}/collections/{agentCollectionId}/members/$ref
Content-Type: application/json

{
  "@odata.id": "https://graph.microsoft.com/beta/agentRegistry/agentInstances('agent-instance-id')"
}
```


### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

