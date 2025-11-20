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

Update the properties of an [agentInstance](../resources/agentinstance.md) object. You can also update the [agentCardManifest](../resources/agentcardmanifest.md) associated with the agent instance by including the manifest in the request body.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentinstance-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentinstance-update-permissions.md)]

[!INCLUDE [rbac-agentregistry-apis](../includes/rbac-for-apis/rbac-agentregistry-apis.md)]

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
|ownerIds|String collection|List of owner identifiers for the agent instance, can be users or service principals. Required.|
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

### Example 1: Update the agentCardManifest in an agentInstance

#### Request

The following example shows a request. The request also creates the agentCardManifest if it does not already exist.

<!-- {
  "blockType": "request",
  "name": "update_agentinstance_add_agentcardmanifest"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/agentRegistry/agentInstances/{agentInstanceId}
Content-Type: application/json

{
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

### Example 2: Update an agentInstance to reference an existing agentCardManifest

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_agentinstance_add_agentcardmanifest_reference"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/agentRegistry/agentInstances/{agentInstanceId}
Content-Type: application/json

{
  "agentCardManifest@odata.bind": "https://graph.microsoft.com/beta/agentRegistry/agentCardManifests('employee-assistant')"
}
```


#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

### Example 3: Update displayName

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_agentinstance_displayname"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/agentRegistry/agentInstances/{agentInstanceId}
Content-Type: application/json

{
  "displayName": "Teams Meeting Scheduler Agent"
}
```


#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```