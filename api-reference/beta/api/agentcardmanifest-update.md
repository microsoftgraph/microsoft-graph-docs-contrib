---
title: "Update agentCardManifest"
description: "Update the properties of an agentCardManifest object."
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra"
doc_type: apiPageType
---

# Update agentCardManifest

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an agentCardManifest object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentcardmanifest-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentcardmanifest-update-permissions.md)]

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


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|ownerIds|String collection|**TODO: Add Description** Required.|
|managedBy|String|**TODO: Add Description** Optional.|
|originatingStore|String|**TODO: Add Description** Optional.|
|createdBy|String|**TODO: Add Description** Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|protocolVersion|String|**TODO: Add Description** Required.|
|displayName|String|**TODO: Add Description** Required.|
|description|String|**TODO: Add Description** Required.|
|iconUrl|String|**TODO: Add Description** Optional.|
|provider|[agentProvider](../resources/agentprovider.md)|**TODO: Add Description** Optional.|
|version|String|**TODO: Add Description** Required.|
|documentationUrl|String|**TODO: Add Description** Optional.|
|capabilities|[agentCapabilities](../resources/agentcapabilities.md)|**TODO: Add Description** Required.|
|securitySchemes|[securitySchemes](../resources/securityschemes.md)|**TODO: Add Description** Optional.|
|security|[securityRequirement](../resources/securityrequirement.md) collection|**TODO: Add Description** Optional.|
|defaultInputModes|String collection|**TODO: Add Description** Required.|
|defaultOutputModes|String collection|**TODO: Add Description** Required.|
|skills|[agentSkill](../resources/agentskill.md) collection|**TODO: Add Description** Required.|
|supportsAuthenticatedExtendedCard|Boolean|**TODO: Add Description** Required.|



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
  "truncated": true
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

