---
title: "Create agentInstance"
description: "Create a new agentInstance object."
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
---

# Create agentInstance

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [agentInstance](../resources/agentinstance.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentregistry-post-agentinstances-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentregistry-post-agentinstances-permissions.md)]

[!INCLUDE [rbac-agentregistry-apis](../includes/rbac-for-apis/rbac-agentregistry-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /agentRegistry/agentInstances
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [agentInstance](../resources/agentinstance.md) object.

You can specify the following properties when creating an **agentInstance**.

|Property|Type|Description|
|:---|:---|:---|
|ownerIds|String collection|List of owner identifiers for the agent instance. Required.|
|managedBy|String|Application identifier managing this agent. Optional.|
|originatingStore|String|Name of the store/system where agent originated. Optional.|
|displayName|String|Display name for the agent instance. Required.|
|sourceAgentId|String|Original agent identifier from source system. Optional.|
|agentIdentityBlueprintId|String|Agent identity blueprint identifier. Optional.|
|agentIdentityId|String|Entra agent identity identifier. Optional.|
|agentUserId|String|User identifier associated with the agent. Optional.|
|url|String|Endpoint URL for the agent instance. Optional.|
|preferredTransport|String|Preferred transport protocol (JSONRPC, GRPC, HTTP+JSON). Optional.|
|additionalInterfaces|[agentInterface](../resources/agentinterface.md) collection|Additional interfaces/transports supported by the agent (url, transport). Optional.|
|signatures|[agentCardSignature](../resources/agentcardsignature.md) collection|Digital signatures for the agent instance (protected, signature, header). Optional.|



## Response

If successful, this method returns a `201 Created` response code and an [agentInstance](../resources/agentinstance.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_agentinstance_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/agentRegistry/agentInstances
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.agentInstance",
  "ownerIds": [
    "String"
  ],
  "managedBy": "String",
  "originatingStore": "String",
  "displayName": "String",
  "sourceAgentId": "String",
  "agentIdentityBlueprintId": "String",
  "agentIdentityId": "String",
  "agentUserId": "String",
  "url": "String",
  "preferredTransport": "String",
  "additionalInterfaces": [
    {
      "@odata.type": "microsoft.graph.agentInterface"
    }
  ],
  "signatures": [
    {
      "@odata.type": "microsoft.graph.agentCardSignature"
    }
  ]
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
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.agentInstance",
  "id": "3d562f1c-8afe-22af-1edb-f273075e268e",
  "ownerIds": [
    "String"
  ],
  "managedBy": "String",
  "originatingStore": "String",
  "createdBy": "String",
  "displayName": "String",
  "sourceAgentId": "String",
  "agentIdentityBlueprintId": "String",
  "agentIdentityId": "String",
  "agentUserId": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "url": "String",
  "preferredTransport": "String",
  "additionalInterfaces": [
    {
      "@odata.type": "microsoft.graph.agentInterface"
    }
  ],
  "signatures": [
    {
      "@odata.type": "microsoft.graph.agentCardSignature"
    }
  ]
}
```

