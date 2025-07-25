---
title: "floor resource type"
description: "Represents a floor within a building."
author: tiwarisakshi02
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: resourcePageType
---

# floor resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a floor within a [building](./building.md). A [building](./building.md) is always the parent of a [floor](./floor.md).

Inherits from [place](./place.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/floor-list.md)|[floor](./floor.md) collection|Get a list of [floor](../resources/floor.md) objects and their properties.|
|[Get](../api/floor-get.md)|[floor](./floor.md)|Read the properties and relationships of a [floor](../resources/floor.md) object.|
|[Update](../api/floor-update.md)|[floor](./floor.md)|Update the properties of a [floor](../resources/floor.md) object.|
|[Delete](../api/floor-delete.md)|None|Delete a [floor](../resources/floor.md) object.|
|[Descendants](../api/floor-descendants.md)|[place](./place.md) collection|Get all the descendants of a specific type (for example, [sections](./section.md), [rooms](./room.md), [workspaces](./workspace.md), or [desks](./desk.md)) under a **floor**. |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|address|[physicalAddress](./physicaladdress.md)|The physical address of the **floor**, including the street, city, state, country or region, and postal code. Inherited from [place](./place.md). |
|displayName|String|The name that is associated with the place. Inherited from [place](./place.md).|
|geoCoordinates|[outlookGeoCoordinates](./outlookgeocoordinates.md)|Specifies the **floor** location in latitude, longitude, and (optionally) altitude coordinates. Inherited from [place](./place.md).|
|id|String|The unique identifier for the place. Read-only. This identifier isn't immutable and can change if the mailbox or tenant configuration changes. Inherited from [place](./place.md).|
|isWheelChairAccessible|Boolean|Indicates whether **floor** is wheelchair accessible. Inherited from [place](./place.md).|
|label |String |User-defined description of the **floor**. Inherited from [place](./place.md).|
|parentId|String|The ID of a parent [building](./building.md). Inherited from [place](./place.md).|
|phone|String|The phone number of the **floor**. Inherited from [place](./place.md).|
|placeId|String|An alternate immutable unique identifier of the **floor**. Read-only. Inherited from [place](./place.md).|
|sortOrder|Int32|Specifies the sort order of the **floor**. For example, a floor might be named "Lobby" with a sort order of `0` to show this floor first in ordered lists. |
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
  "address": {"@odata.type": "microsoft.graph.physicalAddress"},
  "displayName": "String",
  "geoCoordinates": {"@odata.type": "microsoft.graph.outlookGeoCoordinates"},
  "id": "String (identifier)",
  "isWheelChairAccessible": "Boolean",
  "label": "String",
  "parentId": "String",
  "phone": "String",
  "placeId": "String",
  "sortOrder": "Int32",
  "tags": ["String"]
}
```

