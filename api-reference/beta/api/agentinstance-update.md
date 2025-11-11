---
title: "Update agentInstance"
description: "Update the properties of an agentInstance object."
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
---

# Update agentInstance

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an agentInstance object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentinstance-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentinstance-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /agentRegistry/agentInstances/{agentInstanceId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|ownerIds|String collection|List of owner identifiers for the agent instance. Required.|
|managedBy|String|Application identifier managing this agent. Optional.|
|originatingStore|String|Name of the store/system where agent originated. Optional.|
|createdBy|String|User who created the agent instance (read-only). Optional.|
|displayName|String|Display name for the agent instance. Required.|
|sourceAgentId|String|Original agent identifier from source system. Optional.|
|agentIdentityBlueprintId|String|Agent identity blueprint identifier. Optional.|
|agentIdentityId|String|Entra agent identity identifier. Optional.|
|agentUserId|String|User identifier associated with the agent. Optional.|
|createdDateTime|DateTimeOffset|Timestamp when agent instance was created (read-only). Optional.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of last modification (read-only). Optional.|
|url|String|Endpoint URL for the agent instance. Optional.|
|preferredTransport|String|Preferred transport protocol (JSONRPC, GRPC, HTTP+JSON). Optional.|
|additionalInterfaces|[agentInterface](../resources/agentinterface.md) collection|Additional interfaces/transports supported by the agent (url, transport). Optional.|
|signatures|[agentCardSignature](../resources/agentcardsignature.md) collection|Digital signatures for the agent instance (protected, signature, header). Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [agentInstance](../resources/agentinstance.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_agentinstance"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/agentRegistry/agentInstances/{agentInstanceId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.agentInstance",
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
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
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
