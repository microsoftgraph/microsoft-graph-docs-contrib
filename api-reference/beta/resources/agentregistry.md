---
title: "agentRegistry resource type"
description: "**TODO: Add Description**"
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra"
doc_type: resourcePageType
---

# agentRegistry resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

Inherits from [entity](../resources/entity.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/agentregistry-get.md)|[agentRegistry](../resources/agentregistry.md)|Read the properties and relationships of [agentRegistry](../resources/agentregistry.md) object.|
|[Update](../api/agentregistry-update.md)|[agentRegistry](../resources/agentregistry.md)|Update the properties of an agentRegistry object.|
|[List agentCardManifests](../api/agentregistry-list-agentcardmanifests.md)|[agentCardManifest](../resources/agentcardmanifest.md) collection|**TODO: Add a useful description.**|
|[Create agentCardManifest](../api/agentregistry-post-agentcardmanifests.md)|[agentCardManifest](../resources/agentcardmanifest.md)|Create a new agentCardManifest object.|
|[List agentCollections](../api/agentregistry-list-agentcollections.md)|[agentCollection](../resources/agentcollection.md) collection|**TODO: Add a useful description.**|
|[Create agentCollection](../api/agentregistry-post-agentcollections.md)|[agentCollection](../resources/agentcollection.md)|Create a new agentCollection object.|
|[List agentInstances](../api/agentregistry-list-agentinstances.md)|[agentInstance](../resources/agentinstance.md) collection|**TODO: Add a useful description.**|
|[Create agentInstance](../api/agentregistry-post-agentinstances.md)|[agentInstance](../resources/agentinstance.md)|Create a new agentInstance object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|agentCardManifests|[agentCardManifest](../resources/agentcardmanifest.md) collection|**TODO: Add Description**|
|agentCollections|[agentCollection](../resources/agentcollection.md) collection|**TODO: Add Description**|
|agentInstances|[agentInstance](../resources/agentinstance.md) collection|**TODO: Add Description**|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.agentRegistry",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.agentRegistry"
}
```

