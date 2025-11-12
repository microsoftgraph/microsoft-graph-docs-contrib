---
title: "section resource type"
description: "Represents a section within a floor."
author: tiwarisakshi02
ms.date: 11/11/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: resourcePageType
---

# section resource type

Namespace: microsoft.graph

Represents a section within a [floor](./floor.md). A [floor](./floor.md) is always the parent of a [section](./section.md).

Inherits from [place](../resources/place.md).


## Methods
For the list of supported methods, see [place](./place.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|address|[physicalAddress](../resources/physicaladdress.md)|The physical address of the **section**, including the street, city, state, country or region, and postal code. Inherited from [place](./place.md).|
|displayName|String|The display name of the **section**. Inherited from [place](../resources/place.md).|
|geoCoordinates|[outlookGeoCoordinates](../resources/outlookgeocoordinates.md)|Specifies the **section** location in latitude, longitude, and (optionally) altitude coordinates. Inherited from [place](../resources/place.md).|
|id|String|The unique identifier for the section. Read-only. This identifier isn't immutable and can change if the mailbox or tenant configuration changes. Inherited from [entity](../resources/entity.md). |
|isWheelChairAccessible|Boolean|Indicates whether the **section** is wheelchair accessible. Inherited from [place](../resources/place.md).|
|label|String|User-defined description of the **section**. Inherited from [place](../resources/place.md).|
|parentId|String|The ID of a parent [floor](./floor.md) or [building](./building.md). Inherited from [place](../resources/place.md).|
|phone|String|The phone number of the **section**. Inherited from [place](../resources/place.md).|
|tags|String collection|Custom tags that are associated with the section for categorization or filtering. Inherited from [place](../resources/place.md).|

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
  "parentId": "String",
  "tags": [
    "String"
  ],
  "isWheelChairAccessible": "Boolean",
  "label": "String"
}
```

