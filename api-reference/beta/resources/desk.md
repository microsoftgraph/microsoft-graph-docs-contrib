---
title: "desk resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 06/03/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# desk resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [place](../resources/place.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/desk-list.md)|[desk](../resources/desk.md) collection|Get a list of the desk objects and their properties.|
|[Get](../api/desk-get.md)|[desk](../resources/desk.md)|Read the properties and relationships of a desk object.|
|[Update](../api/desk-update.md)|[desk](../resources/desk.md)|Update the properties of a desk object.|
|[Delete](../api/desk-delete.md)|None|Delete a desk object.|
|[descendants](../api/desk-descendants.md)|[place](../resources/place.md) collection|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|address|[physicalAddress](../resources/physicaladdress.md)|**TODO: Add Description** Inherited from [place](../resources/place.md).|
|description|String|**TODO: Add Description** Inherited from [place](../resources/place.md).|
|displayDeviceName|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description** Inherited from [place](../resources/place.md).|
|geoCoordinates|[outlookGeoCoordinates](../resources/outlookgeocoordinates.md)|**TODO: Add Description** Inherited from [place](../resources/place.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|isWheelChairAccessible|Boolean|**TODO: Add Description** Inherited from [place](../resources/place.md).|
|mailboxDetails|[mailboxDetails](../resources/mailboxdetails.md)|**TODO: Add Description**|
|mode|[placeMode](../resources/placemode.md)|**TODO: Add Description**|
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
  "@odata.type": "microsoft.graph.desk",
  "baseType": "microsoft.graph.place",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.desk",
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
  "displayDeviceName": "String",
  "mailboxDetails": {
    "@odata.type": "microsoft.graph.mailboxDetails"
  },
  "mode": {
    "@odata.type": "microsoft.graph.placeMode"
  }
}
```

