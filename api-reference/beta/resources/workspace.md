---
title: "workspace resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# workspace resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [place](../resources/place.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/roomlist-list-workspaces.md)|[workspace](../resources/workspace.md) collection|Get a list of the workspace objects and their properties.|
|[Create](../api/roomlist-post-workspaces.md)|[workspace](../resources/workspace.md)|Create a new workspace object.|
|[Get](../api/workspace-get.md)|[workspace](../resources/workspace.md)|Read the properties and relationships of a workspace object.|
|[Update](../api/workspace-update.md)|[workspace](../resources/workspace.md)|Update the properties of a workspace object.|
|[Delete](../api/roomlist-delete-workspaces.md)|None|Delete a workspace object.|
|[descendants](../api/workspace-descendants.md)|[place](../resources/place.md) collection|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|address|[physicalAddress](../resources/physicaladdress.md)|**TODO: Add Description** Inherited from [place](../resources/place.md).|
|building|String|**TODO: Add Description**|
|capacity|Int32|**TODO: Add Description**|
|displayDeviceName|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description** Inherited from [place](../resources/place.md).|
|emailAddress|String|**TODO: Add Description**|
|floorLabel|String|**TODO: Add Description**|
|floorNumber|Int32|**TODO: Add Description**|
|geoCoordinates|[outlookGeoCoordinates](../resources/outlookgeocoordinates.md)|**TODO: Add Description** Inherited from [place](../resources/place.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|isWheelChairAccessible|Boolean|**TODO: Add Description** Inherited from [place](../resources/place.md).|
|label|String|**TODO: Add Description** Inherited from [place](../resources/place.md).|
|mode|[placeMode](../resources/placemode.md)|**TODO: Add Description**|
|nickname|String|**TODO: Add Description**|
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
  "@odata.type": "microsoft.graph.workspace",
  "baseType": "microsoft.graph.place",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.workspace",
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
  "label": "String",
  "emailAddress": "String",
  "nickname": "String",
  "building": "String",
  "floorNumber": "Integer",
  "capacity": "Integer",
  "floorLabel": "String",
  "displayDeviceName": "String",
  "mode": {
    "@odata.type": "microsoft.graph.placeMode"
  }
}
```

