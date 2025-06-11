---
title: "section resource type"
description: "Represents a section within a floor."
author: "MSGraphDocsvTeam"
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice:
doc_type: resourcePageType
---

# section resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a section within a [floor](./floor.md). A section must always be parented to a floor.

Inherits from [place](../resources/place.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/section-list.md)|A list of **section** objects |Get a list of **section** objects and their properties.|
|[Get](../api/section-get.md)|The requested **section** |Get the properties and relationships of a specified **section**.|
|[Update](../api/section-update.md)|The requested **section** |Update the properties and relationships of a specified **section**. |
|[Delete](../api/section-delete.md)|None|None|Delete the **section** with the specified id.|
|[descendants](../api/section-descendants.md)|List of **place** objects |Returns the list of descendant **place** objects of a specific type (for example, rooms, desks, or workspaces) under a given **section**.|

## Properties

The **section** object type has no unique properties and inherits all properties from the **place** object type.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.section",
  "baseType": "microsoft.graph.place",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.section",
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

