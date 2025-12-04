---
title: "List agentInstance objects"
description: "Get a list of the agentInstance objects and their properties."
author: "jasondou"
ms.date: 11/11/2025
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
---

# List agentInstance objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [agentInstance](../resources/agentinstance.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentregistry-list-agentinstances-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentregistry-list-agentinstances-permissions.md)]

[!INCLUDE [rbac-agentregistry-apis](../includes/rbac-for-apis/rbac-agentregistry-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /agentRegistry/agentInstances
```

## Optional query parameters

This method supports the `$select`, `$count`, `$expand` and `$filter` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

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
  "name": "list_agentinstance"
}
-->
``` http
GET https://graph.microsoft.com/beta/agentRegistry/agentInstances
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
  "value": [
    {
      "id": "Security Copilot Platform Agent: 00222",
      "ownerIds": [
        "daf58b0e-44e1-433c-b6b0-ca70cae320b8",
        "b9108c41-d2d2-4e78-b073-92f57b752bd0"
      ],
      "managedBy": "719cc904-9700-4e08-9941-fd826cc84c60",
      "originatingStore": "Microsoft Security Copilot",
      "createdBy": "d47bffae-411a-4de9-8548-05e79bc01f0d",
      "displayName": "Conditional Access Agent",
      "sourceAgentId": "00222",
      "agentIdentityBlueprintId": "d0108c41-d2d2-4e78-b073-92f57b752bd0",
      "agentIdentityId": "dd108c41-d2d2-4e78-b073-92f57b752bd0",
      "agentUserId": "ee108c41-d2d2-4e78-b073-92f57b752bd0",
      "createdDateTime": "2025-01-01T00:00:00.1234567Z",
      "lastModifiedDateTime": "2025-01-01T00:00:00.1234567Z",
      "url": "https://conditional-access-agent.example.com/a2a/v1",
      "preferredTransport": "JSONRPC",
      "additionalInterfaces": [
        {
          "url": "https://conditional-access-agent.example.com/a2a/v1",
          "transport": "JSONRPC"
        },
        {
          "url": "https://conditional-access-agent.example.com/a2a/grpc",
          "transport": "GRPC"
        },
        {
          "url": "https://conditional-access-agent.example.com/a2a/json",
          "transport": "HTTP+JSON"
        }
      ],
      "signatures": [
        {
          "protected": "eyJhbGciOiJFUzI1NiIsImtpZCI6ImRpZDp3ZWI6Y29udG9zby5leGFtcGxlI2tleS0xIiwidHlwIjoiYWdlbnRjYXJkK2p3cyJ9",
          "signature": "xOSim9oMw_CdZM-qDhmwpB5fJcBx5I30yh-FZULd1j9ruPEUBnJzmfCynNfH1KgmJ2B7ulAYc7D2iIb-4Ul-8w",
          "header": {
            "kidHint": "contoso-key-1",
            "nonce": "f1e9b6c3-2f3a-4a3a-b604-1f9af3f2a9c0"
          }
        }
      ]
    }
  ]
}
```

