---
title: "building resource type"
description: "Represents a building within the tenant."
author: "MSGraphDocsvTeam"
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice:
doc_type: resourcePageType
---

# building resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a building withing the tenant.

Inherits from [place](../resources/place.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/building-list.md)|A list of **building** objects |Get a list of **building** objects and their properties.|
|[Get](../api/building-get.md)|The requested **building** |Get the properties and relationships of a specified **building** object.|
|[Update](../api/building-update.md)|The requested **building** |Update the properties and relationships of a specified **place** object. |
|[Delete](../api/building-delete.md)|None|Delete a **building** with the specified id.|
|[descendants](../api/building-descendants.md)|List of **place** objects |Returns the list of descendant **place** objects of a specific type (for example, floors, sections, rooms, desks, or workspaces) under a given **building**.|

## Properties

The **building** type supports all [base properties of a **place** object](./place.md#base-properties), as well as the following properties:

|Property |Type |Description |
|:--|:--|:--|
|hasWiFi |Boolean |Whether or not the building has WiFi. |

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

