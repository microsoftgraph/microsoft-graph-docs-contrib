---
title: "Update agentCardManifest"
description: "Update the properties of an agentCardManifest object."
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
---

# Update agentCardManifest

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [agentCardManifest](../resources/agentcardmanifest.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentcardmanifest-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentcardmanifest-update-permissions.md)]

[!INCLUDE [rbac-agentregistry-apis](../includes/rbac-for-apis/rbac-agentregistry-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /agentRegistry/agentCardManifests/{agentCardManifestId}
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
|displayName|String|Display name of the agent. Optional.|
|description|String|Description of the agent's purpose. Optional.|
|iconUrl|String|URL to agent's icon image. Optional.|
|protocolVersion|String|Protocol version supported by the agent. Optional.|
|version|String|Version of the agent implementation. Optional.|
|documentationUrl|String|URL to agent's documentation. Optional.|
|defaultInputModes|String collection|Default input modes supported. Optional.|
|defaultOutputModes|String collection|Default output modes supported. Optional.|
|provider|[agentProvider](../resources/agentprovider.md)|Information about the organization providing the agent. Optional.|
|securitySchemes|[securitySchemes](../resources/securityschemes.md)|Dictionary of security scheme definitions keyed by scheme name. Optional.|
|security|[securityRequirement](../resources/securityrequirement.md) collection|Security requirements - array of security scheme references. Optional.|
|capabilities|[agentCapabilities](../resources/agentcapabilities.md)|Specific capabilities supported by the agent. Optional.|
|skills|[agentSkill](../resources/agentskill.md) collection|Skills/capabilities that the agent can perform. Optional.|
|supportsAuthenticatedExtendedCard|Boolean|Whether agent supports authenticated extended card retrieval. Optional.|
|ownerIds|String collection|List of owner identifiers for the agent card manifest, can be users or service principals. Optional.|
|managedBy|String|Application identifier managing this manifest. Optional.|
|originatingStore|String|Name of the store/system where agent originated. Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [agentCardManifest](../resources/agentcardmanifest.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_agentcardmanifest"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/agentRegistry/agentCardManifests/{agentCardManifestId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.agentCardManifest",
  "ownerIds": [
    "String"
  ],
  "managedBy": "String",
  "originatingStore": "String",
  "createdBy": "String",
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
```
