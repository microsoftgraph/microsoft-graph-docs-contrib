---
title: "agentCardManifest resource type"
description: "**TODO: Add Description**"
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra"
doc_type: resourcePageType
---

# agentCardManifest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/agentinstance-list-agentcardmanifest.md)|[agentCardManifest](../resources/agentcardmanifest.md) collection|Get a list of the agentCardManifest objects and their properties.|
|[Create](../api/agentinstance-post-agentcardmanifest.md)|[agentCardManifest](../resources/agentcardmanifest.md)|Create a new agentCardManifest object.|
|[Get](../api/agentcardmanifest-get.md)|[agentCardManifest](../resources/agentcardmanifest.md)|Read the properties and relationships of [agentCardManifest](../resources/agentcardmanifest.md) object.|
|[Update](../api/agentcardmanifest-update.md)|[agentCardManifest](../resources/agentcardmanifest.md)|Update the properties of an agentCardManifest object.|
|[Delete](../api/agentinstance-delete-agentcardmanifest.md)|None|Delete an agentCardManifest object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|capabilities|[agentCapabilities](../resources/agentcapabilities.md)|**TODO: Add Description**|
|createdBy|String|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|defaultInputModes|String collection|**TODO: Add Description**|
|defaultOutputModes|String collection|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|documentationUrl|String|**TODO: Add Description**|
|iconUrl|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|managedBy|String|**TODO: Add Description**|
|originatingStore|String|**TODO: Add Description**|
|ownerIds|String collection|**TODO: Add Description**|
|protocolVersion|String|**TODO: Add Description**|
|provider|[agentProvider](../resources/agentprovider.md)|**TODO: Add Description**|
|security|[securityRequirement](../resources/securityrequirement.md) collection|**TODO: Add Description**|
|securitySchemes|[securitySchemes](../resources/securityschemes.md)|**TODO: Add Description**|
|skills|[agentSkill](../resources/agentskill.md) collection|**TODO: Add Description**|
|supportsAuthenticatedExtendedCard|Boolean|**TODO: Add Description**|
|version|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.agentCardManifest",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.agentCardManifest",
  "id": "String (identifier)",
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

