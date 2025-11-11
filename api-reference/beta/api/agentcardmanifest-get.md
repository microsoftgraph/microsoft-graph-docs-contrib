---
title: "Get agentCardManifest"
description: "Read the properties and relationships of agentCardManifest object."
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
---

# Get agentCardManifest

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of [agentCardManifest](../resources/agentcardmanifest.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentcardmanifest-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentcardmanifest-get-permissions.md)]

[!INCLUDE [rbac-agentregistry-apis](../includes/rbac-for-apis/rbac-agentregistry-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /agentRegistry/agentCardManifests/{agentCardManifestId}
```

## Optional query parameters

This method supports the `select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [agentCardManifest](../resources/agentcardmanifest.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_agentcardmanifest"
}
-->
``` http
GET https://graph.microsoft.com/beta/agentRegistry/agentCardManifests/{agentCardManifestId}
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
  "value": {
    "@odata.type": "#microsoft.graph.agentCardManifest",
    "id": "5d1d9ba4-36ed-2e0c-c182-9da69c5e398d",
    "ownerIds": [
      "String"
    ],
    "managedBy": "String",
    "originatingStore": "String",
    "createdBy": "String",
    "createdDateTime": "String (timestamp)",
    "lastModifiedDateTime": "String (timestamp)",
    "protocolVersion": "String",
    "displayName": "String",
    "description": "String",
    "iconUrl": "String",
    "provider": {
      "@odata.type": "microsoft.graph.agentProvider"
    },
    "version": "String",
    "documentationUrl": "String",
    "capabilities": {
      "@odata.type": "microsoft.graph.agentCapabilities"
    },
    "securitySchemes": {
      "@odata.type": "microsoft.graph.securitySchemes"
    },
    "security": [
      {
        "@odata.type": "microsoft.graph.securityRequirement"
      }
    ],
    "defaultInputModes": [
      "String"
    ],
    "defaultOutputModes": [
      "String"
    ],
    "skills": [
      {
        "@odata.type": "microsoft.graph.agentSkill"
      }
    ],
    "supportsAuthenticatedExtendedCard": "Boolean"
  }
}
```

