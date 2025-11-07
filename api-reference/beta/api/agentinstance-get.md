---
title: "Get agentInstance"
description: "Read the properties and relationships of agentInstance object."
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
---

# Get agentInstance

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of [agentInstance](../resources/agentinstance.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentinstance-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentinstance-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /agentRegistry/agentInstances/{agentInstanceId}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [agentInstance](../resources/agentinstance.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_agentinstance"
}
-->
``` http
GET https://graph.microsoft.com/beta/agentRegistry/agentInstances/{agentInstanceId}
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
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
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
}
```

