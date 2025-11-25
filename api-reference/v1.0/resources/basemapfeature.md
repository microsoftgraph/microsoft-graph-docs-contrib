---
title: "baseMapFeature resource type"
description: "An abstract type that represents different map types within a tenant."
author: tiwarisakshi02
ms.date: 11/11/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: resourcePageType
---

# baseMapFeature resource type

Namespace: microsoft.graph

An abstract type that represents different map types within a tenant.

Base type of [buildingMap](../resources/buildingmap.md), [fixtureMap](../resources/fixturemap.md), [footprintMap](../resources/footprintmap.md), [levelMap](../resources/levelmap.md), [sectionMap](../resources/sectionmap.md), and [unitMap](../resources/unitmap.md).

Inherits from [entity](../resources/entity.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the **baseMapFeature** object. Inherited from [entity](./entity.md). |
|properties|String|Concatenated key-value pair of all properties of a GeoJSON file for this **baseMapFeature**.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.baseMapFeature",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.baseMapFeature",
  "id": "String (identifier)",
  "properties": "String"
}
```
