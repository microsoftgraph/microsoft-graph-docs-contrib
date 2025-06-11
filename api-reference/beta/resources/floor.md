---
title: "floor resource type"
description: "Represents a floor within a building."
author: "MSGraphDocsvTeam"
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice:
doc_type: resourcePageType
---

# floor resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a floor within a [building](./building.md). A floor must always be parented to a building.

Inherits from [place](../resources/place.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/floor-list.md)|A list of **floor** objects |Get a list of **floor** objects and their properties.|
|[Get](../api/floor-get.md)|The requested **floor** |Get the properties and relationships of a specified **floor**.|
|[Update](../api/floor-update.md)|The requested **floor** |Update the properties and relationships of a specified **floor**. |
|[Delete](../api/floor-delete.md)|None|Delete the **floor** with the specified id.|
|[descendants](../api/floor-descendants.md)|List of **place** objects |Returns the list of descendant **place** objects of a specific type (for example, sections, rooms, desks, or workspaces) under a given **floor**.|

## Properties

The **floor** type supports all [base properties of a **place** object](./place.md#base-properties), as well as the following properties:

|Property |Type |Description |
|:--|:--|:--|
|SortOrder |Integer |Specifies the sort order of the floor. For example, a floor might be named "Lobby" with a sort order of 0 to show this floor first in ordered lists. |

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

