---
title: "agentInstance resource type"
description: "**TODO: Add Description**"
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra"
doc_type: resourcePageType
---

# agentInstance resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/agentregistry-list-agentinstances.md)|[agentInstance](../resources/agentinstance.md) collection|Get a list of the agentInstance objects and their properties.|
|[Create](../api/agentregistry-post-agentinstances.md)|[agentInstance](../resources/agentinstance.md)|Create a new agentInstance object.|
|[Get](../api/agentinstance-get.md)|[agentInstance](../resources/agentinstance.md)|Read the properties and relationships of [agentInstance](../resources/agentinstance.md) object.|
|[Update](../api/agentinstance-update.md)|[agentInstance](../resources/agentinstance.md)|Update the properties of an agentInstance object.|
|[Delete](../api/agentregistry-delete-agentinstances.md)|None|Delete an agentInstance object.|
|[List agentCardManifest](../api/agentinstance-list-agentcardmanifest.md)|[agentCardManifest](../resources/agentcardmanifest.md) collection|**TODO: Add a useful description.**|
|[Add agentCardManifest](../api/agentinstance-post-agentcardmanifest.md)|[agentCardManifest](../resources/agentcardmanifest.md)|Add agentCardManifest by posting to the agentCardManifest collection.|
|[Remove agentCardManifest](../api/agentinstance-delete-agentcardmanifest.md)|None|Remove an [agentCardManifest](../resources/agentcardmanifest.md) object.|
|[List collections](../api/agentinstance-list-collections.md)|[agentCollection](../resources/agentcollection.md) collection|**TODO: Add a useful description.**|
|[Add agentCollection](../api/agentinstance-post-collections.md)|[agentCollection](../resources/agentcollection.md)|Add collections by posting to the collections collection.|
|[Remove collections](../api/agentinstance-delete-collections.md)|None|Remove an [agentCollection](../resources/agentcollection.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|additionalInterfaces|[agentInterface](../resources/agentinterface.md) collection|**TODO: Add Description**|
|agentIdentityBlueprintId|String|**TODO: Add Description**|
|agentIdentityId|String|**TODO: Add Description**|
|agentUserId|String|**TODO: Add Description**|
|createdBy|String|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|managedBy|String|**TODO: Add Description**|
|originatingStore|String|**TODO: Add Description**|
|ownerIds|String collection|**TODO: Add Description**|
|preferredTransport|String|**TODO: Add Description**|
|signatures|[agentCardSignature](../resources/agentcardsignature.md) collection|**TODO: Add Description**|
|sourceAgentId|String|**TODO: Add Description**|
|url|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|agentCardManifest|[agentCardManifest](../resources/agentcardmanifest.md)|**TODO: Add Description**|
|collections|[agentCollection](../resources/agentcollection.md) collection|**TODO: Add Description**|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.agentInstance",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.agentInstance",
  "id": "String (identifier)",
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

