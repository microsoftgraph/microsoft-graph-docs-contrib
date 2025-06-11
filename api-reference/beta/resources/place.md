---
title: "place resource type"
description: "**TODO: Add Description**"
author: "MSGraphDocsvTeam"
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice:
doc_type: resourcePageType
---

# place resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**
This is an abstract type.


Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/place-list.md)|[place](../resources/place.md) collection|Get a list of the place objects and their properties.|
|[Create](../api/place-post-places.md)|[place](../resources/place.md)|Create a new place object.|
|[Get](../api/place-get.md)|[place](../resources/place.md)|Read the properties and relationships of a place object.|
|[Update](../api/place-update.md)|[place](../resources/place.md)|Update the properties of a place object.|
|[Delete](../api/place-delete.md)|None|Delete a place object.|
|[descendants](../api/place-descendants.md)|[place](../resources/place.md) collection|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|address|[physicalAddress](../resources/physicaladdress.md)|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|geoCoordinates|[outlookGeoCoordinates](../resources/outlookgeocoordinates.md)|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|isWheelChairAccessible|Boolean|**TODO: Add Description**|
|label|String|**TODO: Add Description**|
|parentId|String|**TODO: Add Description**|
|phone|String|**TODO: Add Description**|
|placeId|String|**TODO: Add Description**|
|resourceLinks|[resourceLink](../resources/resourcelink.md) collection|**TODO: Add Description**|
|tags|String collection|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.place",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.place",
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
  "resourceLinks": [
    {
      "@odata.type": "microsoft.graph.resourceLink"
    }
  ],
  "tags": [
    "String"
  ],
  "isWheelChairAccessible": "Boolean",
  "label": "String"
}
```

