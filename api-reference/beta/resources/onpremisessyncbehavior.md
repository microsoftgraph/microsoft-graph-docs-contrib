---
title: "onPremisesSyncBehavior resource type"
description: "OnPremisesSyncBehavior indicates the state of synchronization for a directory object in the cloud."
author: "rubytek-git"
ms.date: 06/30/2025
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
---

# onPremisesSyncBehavior resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

OnPremisesSyncBehavior indicates the state of synchronization for a directory object in the cloud. 


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/onpremisessyncbehavior-get.md)|[onPremisesSyncBehavior](../resources/onpremisessyncbehavior.md)|Read the properties and relationships of an onPremisesSyncBehavior object.|
|[Update](../api/onpremisessyncbehavior-update.md)|[onPremisesSyncBehavior](../resources/onpremisessyncbehavior.md)|Update the properties of an onPremisesSyncBehavior object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isCloudManaged|Boolean|Indicates whether the object’s source of authority is set to the cloud.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.onPremisesSyncBehavior",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onPremisesSyncBehavior",
  "id": "String (identifier)",
  "isCloudManaged": "Boolean"
}
```

