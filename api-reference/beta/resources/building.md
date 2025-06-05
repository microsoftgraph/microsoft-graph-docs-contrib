---
title: "building resource type"
description: "**TODO: Add Description**"
author: mattpennathe3rd
ms.date: 06/03/2025
ms.localizationpriority: medium
ms.subservice: places
doc_type: resourcePageType
---

# building resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [place](../resources/place.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/building-list.md)|[building](../resources/building.md) collection|Get a list of the building objects and their properties.|
|[Get](../api/building-get.md)|[building](../resources/building.md)|Read the properties and relationships of a building object.|
|[Update](../api/building-update.md)|[building](../resources/building.md)|Update the properties of a building object.|
|[Delete](../api/building-delete.md)|None|Delete a building object.|
|[descendants](../api/building-descendants.md)|[place](../resources/place.md) collection|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|address|[physicalAddress](../resources/physicaladdress.md)|**TODO: Add Description** Inherited from [place](../resources/place.md).|
|description|String|**TODO: Add Description** Inherited from [place](../resources/place.md).|
|displayName|String|**TODO: Add Description** Inherited from [place](../resources/place.md).|
|geoCoordinates|[outlookGeoCoordinates](../resources/outlookgeocoordinates.md)|**TODO: Add Description** Inherited from [place](../resources/place.md).|
|hasWiFi|Boolean|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|isWheelChairAccessible|Boolean|**TODO: Add Description** Inherited from [place](../resources/place.md).|
|parentId|String|**TODO: Add Description** Inherited from [place](../resources/place.md).|
|phone|String|**TODO: Add Description** Inherited from [place](../resources/place.md).|
|placeId|String|**TODO: Add Description** Inherited from [place](../resources/place.md).|
|resourceLinks|[resourceLink](../resources/resourcelink.md) collection|**TODO: Add Description** Inherited from [place](../resources/place.md).|
|tags|String collection|**TODO: Add Description** Inherited from [place](../resources/place.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.building",
  "baseType": "microsoft.graph.place",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.building",
  "id": "String (identifier)",
  "displayName": "String",
  "geoCoordinates": {
    "@odata.type": "microsoft.graph.outlookGeoCoordinates"
  },
  "phone": "String",
  "address": {
    "@odata.type": "microsoft.graph.physicalAddress"
  },
  "placeId": "String",
  "parentId": "String",
  "description": "String",
  "resourceLinks": [
    {
      "@odata.type": "microsoft.graph.resourceLink"
    }
  ],
  "tags": [
    "String"
  ],
  "isWheelChairAccessible": "Boolean",
  "hasWiFi": "Boolean"
}
```

