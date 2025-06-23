---
title: "floor resource type"
description: "Represents a floor within a building."
author: tiwarisakshi02
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice:
doc_type: resourcePageType
---

# floor resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a floor within a [building](./building.md).

A [building](./building.md) is always the parent of a [floor](./floor.md).

Inherits from [place](./place.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/floor-list.md)|[floor](./floor.md) collection|Get a list of **floor** objects and their properties.|
|[Get](../api/floor-get.md)|[floor](./floor.md)|Read the properties and relationships of a **floor** object.|
|[Update](../api/floor-update.md)|[floor](./floor.md)|Update the properties of a **floor** object.|
|[Delete](../api/floor-delete.md)|None|Delete a **floor** object.|
|[descendants](../api/floor-descendants.md)|[place](./place.md) collection|Returns the list of descendant **place** objects of a specific type (for example, [sections](./section.md), [rooms](./room.md), [desks](./desk.md), or [workspaces](./workspace.md)) under a given **floor**. |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|address|[physicalAddress](./physicaladdress.md)|The physical address of the **floor**, including the street, city, state, country or region, and postal code. Inherited from [place](./place.md). |
|description |String |User-defined description of the **floor**. (This property is referred to as **label** in the Places PowerShell cmdlet and on Places version 1 objects.) Inherited from [place](./place.md).|
|displayName|String|The name that is associated with the place. Inherited from [place](./place.md).|
|geoCoordinates|[outlookGeoCoordinates](./outlookgeocoordinates.md)|Specifies the **floor** location in latitude, longitude, and (optionally) altitude coordinates. Inherited from [place](./place.md).|
|id|String|A unique identifier for the place. Read-only. This identifier isn't immutable and can change if there are changes to the mailbox or the tenant configuration. Inherits from [entity](./entity.md)|
|isWheelChairAccessible|Boolean|Whether or not the **floor** is wheelchair accessible. Inherited from [place](./place.md).|
|parentId|String|ID of a parent [building](./building.md). Inherited from [place](./place.md).|
|phone|String|The phone number of the **floor**. Inherited from [place](./place.md).|
|placeId|String|An alternate immutable unique identifier of the **floor**. Read-only. Inherited from [place](./place.md).|
|resourceLinks|[resourceLink](./resourcelink.md) collection|A set of links to external resources that are associated with the **floor**. Inherited from [place](./place.md).|
|sortOrder|Int32|Specifies the sort order of the floor. For example, a floor might be named "Lobby" with a sort order of 0 to show this floor first in ordered lists. |
|tags|String collection|Custom tags that are associated with the **floor** for categorization or filtering. Inherited from [place](./place.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.floor",
  "baseType": "microsoft.graph.place",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.floor",
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
  "sortOrder": "Integer"
}
```

