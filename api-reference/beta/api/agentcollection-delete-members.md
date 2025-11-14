---
title: "Remove agentInstance from agentCollection"
description: "Remove an agentInstance object from an agentCollection."
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
---

# Remove agentInstance from agentCollection

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remove an [agentInstance](../resources/agentinstance.md) object from an [agentCollection](../resources/agentcollection.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentcollection-delete-members-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentcollection-delete-members-permissions.md)]

> [!IMPORTANT]
> In addition to the permissions listed in the preceding table, the following lesser-privileged delegated and application permissions scoped to the special collections are supported for this API:
> - *AgentCollection.ReadWrite.Global* for **Global** collection
> - *AgentCollection.ReadWrite.Quarantined* for **Quarantined** collection

[!INCLUDE [rbac-agentregistry-apis](../includes/rbac-for-apis/rbac-agentregistry-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /agentRegistry/agentInstances/{agentInstanceId}/collections/{agentCollectionId}/members/{id}/$ref
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_members_from_agentcollection"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/agentRegistry/agentInstances/{agentInstanceId}/collections/{agentCollectionId}/members/{id}/$ref
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

