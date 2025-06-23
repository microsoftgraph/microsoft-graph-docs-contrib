---
title: "section resource type"
description: "Represents a section within a floor."
author: tiwarisakshi02
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice:
doc_type: resourcePageType
---

# section resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a section within a [floor](./floor.md).

A [floor](./floor.md) is always the parent of a [section](./section.md).

Inherits from [place](./place.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/section-list.md)|[section](./section.md) collection|Get a list of the section objects and their properties.|
|[Get](../api/section-get.md)|[section](./section.md)|Read the properties and relationships of a section object.|
|[Update](../api/section-update.md)|[section](./section.md)|Update the properties of a section object.|
|[Delete](../api/section-delete.md)|None|Delete a section object.|
|[descendants](../api/section-descendants.md)|[place](./place.md) collection|Returns the list of descendant **place** objects of a specific type (for example, [rooms](./room.md), [desks](./desk.md), or [workspaces](./workspace.md)) under a given **section**. |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|address|[physicalAddress](./physicaladdress.md)|The physical address of the **section**, including the street, city, state, country or region, and postal code. Inherited from [place](./place.md).|
|description |String |User-defined description of the **section**. (This property is referred to as **label** in the Places PowerShell cmdlet and on Places version 1 objects.) Inherited from [place](./place.md). |
|displayName|String|The name that is associated with the **section**. Inherited from [place](./place.md).|
|geoCoordinates|[outlookGeoCoordinates](./outlookgeocoordinates.md)|Specifies the **section** location in latitude, longitude, and (optionally) altitude coordinates. Inherited from [place](./place.md).|
|id|String|A unique identifier for the place. Read-only. This identifier isn't immutable and can change if there are changes to the mailbox or the tenant configuration. Inherited from [entity](./entity.md). |
|isWheelChairAccessible|Boolean|Whether or not the **section** is wheelchair accessible.  Inherited from [place](./place.md).|
|parentId|String|ID of a parent **floor**. Inherited from [place](./place.md).|
|phone|String|The phone number of the **section**. Inherited from [place](./place.md).|
|placeId|String|An alternate immutable unique identifier of the **section**. Read-only. Inherited from [place](./place.md).|
|resourceLinks|[resourceLink](./resourcelink.md) collection|A set of links to external resources that are associated with the **section**. Inherited from [place](./place.md).|
|tags|String collection|Custom tags that are associated with the **place** for categorization or filtering. Inherited from [place](./place.md).|

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

