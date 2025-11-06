---
title: "Add agentInstance"
description: "Add members by posting to the members collection."
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra"
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

In the request body, supply a JSON representation of the [agentInstance](../resources/agentinstance.md) object.

You can specify the following properties when creating an **agentInstance**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|ownerIds|String collection|**TODO: Add Description** Required.|
|managedBy|String|**TODO: Add Description** Optional.|
|originatingStore|String|**TODO: Add Description** Optional.|
|createdBy|String|**TODO: Add Description** Optional.|
|displayName|String|**TODO: Add Description** Required.|
|sourceAgentId|String|**TODO: Add Description** Optional.|
|agentIdentityBlueprintId|String|**TODO: Add Description** Optional.|
|agentIdentityId|String|**TODO: Add Description** Optional.|
|agentUserId|String|**TODO: Add Description** Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|url|String|**TODO: Add Description** Optional.|
|preferredTransport|String|**TODO: Add Description** Optional.|
|additionalInterfaces|[agentInterface](../resources/agentinterface.md) collection|**TODO: Add Description** Optional.|
|signatures|[agentCardSignature](../resources/agentcardsignature.md) collection|**TODO: Add Description** Optional.|



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
  "truncated": true,
  "@odata.type": "microsoft.graph.agentInstance"
}
-->
``` http
HTTP/1.1 204 No Content
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

