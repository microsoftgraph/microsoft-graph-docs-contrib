---
title: "section resource type"
description: "Represents a section within a floor."
author: tiwarisakshi02
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: resourcePageType
---

# section resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a section within a [floor](./floor.md). A [floor](./floor.md) is always the parent of a [section](./section.md).

Inherits from [place](./place.md).

## Methods
For the list of supported methods, see [place](./place.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|address|[physicalAddress](./physicaladdress.md)|The physical address of the **section**, including the street, city, state, country or region, and postal code. Inherited from [place](./place.md).|
|displayName|String|The name that is associated with the **section**. Inherited from [place](./place.md).|
|geoCoordinates|[outlookGeoCoordinates](./outlookgeocoordinates.md)|Specifies the **section** location in latitude, longitude, and (optionally) altitude coordinates. Inherited from [place](./place.md).|
|id|String|The unique identifier for the section. Read-only. This identifier isn't immutable and can change if the mailbox or tenant configuration changes. Inherited from [place](./place.md). |
|isWheelChairAccessible|Boolean|Indicates whether the **section** is wheelchair accessible. Inherited from [place](./place.md).|
|label |String |User-defined description of the **section**. Inherited from [place](./place.md). |
|parentId|String|The ID of a parent [floor](./floor.md). Inherited from [place](./place.md).|
|phone|String|The phone number of the **section**. Inherited from [place](./place.md).|
|tags|String collection|Custom tags that are associated with the section for categorization or filtering. Inherited from [place](./place.md).|

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
  "address": {"@odata.type": "microsoft.graph.physicalAddress"},
  "displayName": "String",
  "geoCoordinates": {"@odata.type": "microsoft.graph.outlookGeoCoordinates"},
  "id": "String (identifier)",
  "isWheelChairAccessible": "Boolean",
  "label": "String",  
  "parentId": "String",
  "phone": "String",
  "tags": ["String"]
}
```

