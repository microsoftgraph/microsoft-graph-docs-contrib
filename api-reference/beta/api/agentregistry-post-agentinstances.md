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

### Example 1: Create an agentInstance with a new agentCardManifest

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_agentinstance_new_agentcardmanifest"
}
-->
``` http
POST https://graph.microsoft.com/beta/agentRegistry/agentInstances
Content-Type: application/json

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
  ],
  "agentCardManifest": {
    "ownerIds": [
      "0ef68a76-e247-41dd-947b-41282760a2ac"
    ],
    "originatingStore": "Copilot Studio",
    "displayName": "Conditional Access Agent Card",
    "description": "Manages organizational conditional access policies",
    "iconUrl": "https://example.com/icon.png",
    "provider": {
      "organization": "Test Organization",
      "url": "https://test.com"
    },
    "protocolVersion": "1.0",
    "version": "1.0.0",
    "documentationUrl": "https://example.com/docs",
    "capabilities": {
      "streaming": false,
      "pushNotifications": false,
      "stateTransitionHistory": true,
      "extensions": [
        {
          "uri": "https://contoso.example.com/a2a/capabilities/secureMessaging",
          "description": null,
          "required": false,
          "params": {
            "useHttps": true
          }
        }
      ]
    },
    "defaultInputModes": [
      "application/json"
    ],
    "defaultOutputModes": [
      "application/json",
      "text/html"
    ],
    "supportsAuthenticatedExtendedCard": true,
    "skills": [
      {
        "id": "threat-detection",
        "displayName": "Threat Detection",
        "description": "Detect security threats in real-time",
        "tags": [
          "security",
          "threat",
          "detection"
        ],
        "examples": [
          "Analyze this log for threats",
          "Check for malware"
        ],
        "inputModes": [
          "application/json",
          "text/plain"
        ],
        "outputModes": [
          "application/json",
          "text/html"
        ]
      }
    ]
  }
}
```


#### Response

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
```

### Example 2: Create an agentInstance and reference an existing agentCardManifest

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_agentinstance_reference_existing_agentcardmanifest"
}
-->
``` http
POST https://graph.microsoft.com/beta/agentRegistry/agentInstances
Content-Type: application/json

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
  ],
  "agentCardManifest@odata.bind": "https://graph.microsoft.com/beta/agentRegistry/agentCardManifests('employee-assistant')"
}
```


#### Response

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
```

### Example 3: Create an agentInstance without the agentCardManifest

#### Request

The following example shows a request. To add an agentCardManifest later, use the [Update agentInstance API](../api/agentinstance-update.md).
<!-- {
  "blockType": "request",
  "name": "create_agentinstance_without_agentcardmanifest"
}
-->
``` http
POST https://graph.microsoft.com/beta/agentRegistry/agentInstances
Content-Type: application/json

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
```


#### Response

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
```