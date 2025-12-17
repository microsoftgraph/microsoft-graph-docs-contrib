---
title: "List agentCardManifests"
description: "List all agent card manifests in the agent registry"
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-agent-id"
doc_type: apiPageType
---

# List agentCardManifests

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve all [agent card manifests](../resources/agentcardmanifest.md) for the tenant.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "agentregistry_list_agentcardmanifests" } -->
[!INCLUDE [permissions-table](../includes/permissions/agentregistry-list-agentcardmanifests-permissions.md)]

[!INCLUDE [rbac-agentregistry-apis](../includes/rbac-for-apis/rbac-agentregistry-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /agentRegistry/agentCardManifests
```

## Optional query parameters

This method supports the `$select` and `$filter` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [agentCardManifest](../resources/agentcardmanifest.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_agentcardmanifest"
}
-->
``` http
GET https://graph.microsoft.com/beta/agentRegistry/agentCardManifests
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.agentCardManifest"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "Security Copilot Platform Agent Card Manifest: 00223",
      "ownerIds": [
        "daf58b0e-44e1-433c-b6b0-ca70cae320b8",
        "b9108c41-d2d2-4e78-b073-92f57b752bd0"
      ],
      "managedBy": "719cc904-9700-4e08-9941-fd826cc84c60",
      "originatingStore": "Microsoft Security Copilot",
      "createdBy": "d47bffae-411a-4de9-8548-05e79bc01f0d",
      "protocolVersion": "0.2.9",
      "createdDateTime": "2025-01-01T00:00:00.1234567Z",
      "lastModifiedDateTime": "2025-01-01T00:00:00.1234567Z",
      "displayName": "Conditional Access Agent",
      "description": "The Conditional Access optimization agent helps you ensure all users and applications are protected by Conditional Access policies.",
      "iconUrl": "https://conditional-access-agent.example.com/icon",
      "provider": {
        "organization": "Microsoft Inc.",
        "url": "https://www.microsoft.com"
      },
      "version": "1.2.0",
      "documentationUrl": "https://learn.microsoft.com/en-us/entra/identity/conditional-access/agent-optimization",
      "capabilities": {
        "streaming": true,
        "pushNotifications": true,
        "stateTransitionHistory": false,
        "extensions": [
          {
            "uri": "https://contoso.example.com/a2a/capabilities/secureMessaging",
            "description": null,
            "required": false,
            "params": {
              "useHttps": true,
              "info": {
                "version": "1.0.0"
              }
            }
          }
        ]
      },
      "securitySchemes": {
        "google": {
          "@odata.type": "#microsoft.graph.apiKeySecurityScheme",
          "type": "apiKey",
          "description": "Use an api key",
          "name": "key",
          "in": "cookie"
        },
        "entra": {
          "@odata.type": "#microsoft.graph.oAuth2SecurityScheme",
          "type": "oauth2",
          "description": "Use oauth",
          "flows": {
            "clientCredentials": {
              "tokenUrl": "https://login.microsoftonline.com",
              "refreshUrl": null,
              "scopes": {
                "agent.run": "run the agent"
              }
            }
          }
        }
      },
      "security": [
        {
          "google": []
        },
        {
          "entra": []
        }
      ],
      "defaultInputModes": [
        "application/json"
      ],
      "defaultOutputModes": [
        "application/json",
        "text/html"
      ],
      "skills": [
        {
          "id": "analyze-conditional-access",
          "displayName": "CA Optimizer",
          "description": "The agent can recommend new policies and update existing conditional access policies.",
          "tags": [
            "security",
            "optimize",
            "conditional-access"
          ],
          "examples": [
            "Find policies that need updating."
          ],
          "inputModes": [
            "application/json",
            "text/plain"
          ],
          "outputModes": [
            "application/json",
            "application/vnd.geo+json",
            "text/html"
          ],
          "security": [
            {
              "entra": []
            }
          ]
        }
      ],
      "supportsAuthenticatedExtendedCard": false
    }
  ]
}
```

