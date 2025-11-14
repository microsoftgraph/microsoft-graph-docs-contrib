---
title: "Delete agentCollection"
description: "Delete an agentCollection object."
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
---

# Delete agentCollection

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete an [agentCollection](../resources/agentcollection.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentregistry-delete-agentcollections-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentregistry-delete-agentcollections-permissions.md)]

> [!IMPORTANT]
> In addition to the permissions listed in the preceding table, the following lesser-privileged delegated permissions scoped to the special collections are supported for this API:
> - *AgentCollection.ReadWrite.Global* for **Global** collection
> - *AgentCollection.ReadWrite.Quarantined* for **Quarantined** collection

[!INCLUDE [rbac-agentregistry-apis](../includes/rbac-for-apis/rbac-agentregistry-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /agentRegistry/agentCollections/{agentCollectionId}
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
  "name": "delete_agentcollection"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/agentRegistry/agentCollections/{agentCollectionId}
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

