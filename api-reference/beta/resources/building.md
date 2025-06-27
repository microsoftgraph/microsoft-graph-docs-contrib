---
title: "building resource type"
description: "Represents a building within the tenant."
author: tiwarisakshi02
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice:
doc_type: resourcePageType
---

# building resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a building within the tenant.

Inherits from [place](./place.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/building-list.md)|[building](./building.md) collection|Get a list of the building objects and their properties.|
|[Get](../api/building-get.md)|[building](./building.md)|Read the properties and relationships of a building object.|
|[Update](../api/building-update.md)|[building](./building.md)|Update the properties of a building object.|
|[Delete](../api/building-delete.md)|None|Delete a building object.|
|[descendants](../api/building-descendants.md)|[place](./place.md) collection|Get all the descendants of a specific type (for example, [floors](./floor.md), [sections](./section.md), [rooms](./room.md), [workspaces](./workspace.md), or [desks](./desk.md)) under a **building**.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|address|[physicalAddress](./physicaladdress.md)|The physical address of the **building**, including the street, city, state, country or region, and postal code. Inherited from [place](./place.md). |
|description |String |User-defined description of the place. (This property is referred to as **label** in the Places PowerShell cmdlet and on Places version 1 objects.) Inherited from [place](./place.md). |
|displayName|String|The name that is associated with the place. Inherited from [place](./place.md). |
|geoCoordinates|[outlookGeoCoordinates](./outlookgeocoordinates.md)|Specifies the **building** location in latitude, longitude, and (optionally) altitude coordinates. Inherited from [place](./place.md). |
|hasWiFi|Boolean|Whether or not the **building** has Wifi. |
|id|String|A unique identifier for the place. Read-only. This identifier isn't immutable and can change if there are changes to the mailbox or the tenant configuration. Inherited from [entity](./entity.md) |
|isWheelChairAccessible|Boolean|Whether or not the **building** is wheelchair accessible. Inherited from [place](./place.md). |
|parentId|String|**id** of a parent [place](../resources/place.md). Inherited from [place](./place.md).|
|phone|String|The phone number of the **building**. Inherited from [place](./place.md). |
|placeId|String|An alternate immutable unique identifier of the **building**. Read-only. Inherited from [place](./place.md). |
|resourceLinks|[resourceLink](./resourcelink.md) collection|A set of links to external resources that are associated with the **building**. Inherited from [place](./place.md). |
|tags|String collection|Custom tags that are associated with the place for categorization or filtering. Inherited from [place](./place.md). |

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
  "hasWiFi": "Boolean"
}
```

