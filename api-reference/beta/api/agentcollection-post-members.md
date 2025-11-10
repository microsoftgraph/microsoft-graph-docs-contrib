---
title: "Add agentInstance"
description: "Add members by posting to the members collection."
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
---

# Add agentInstance

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add members by posting to the members collection.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentcollection-post-members-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentcollection-post-members-permissions.md)]

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

In the request body, supply a JSON object that contains a **@odata.id** property with a reference by ID to an agent instance.

## Response

If successful, this method returns a `204 No Content` response code and an [agentInstance](../resources/agentinstance.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_agentinstance_from_"
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
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.agentInstance"
}
-->
``` http
HTTP/1.1 204 No Content
```

