---
title: "building resource type"
description: "Represents a building within the tenant."
author: tiwarisakshi02
ms.date: 06/12/2025
ms.localizationpriority: medium
ms.subservice: outlook
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
|[Ingest map file](../api/building-ingestmapfile.md)|None|Ingest the map file for a [building](../resources/building.md) in Places.|

For more supported methods, see [place](./place.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|address|[physicalAddress](./physicaladdress.md)|The physical address of the **building**, including the street, city, state, country or region, and postal code. Inherited from [place](./place.md). |
|displayName|String|The name that is associated with the building. Inherited from [place](./place.md). |
|geoCoordinates|[outlookGeoCoordinates](./outlookgeocoordinates.md)|Specifies the **building** location in latitude, longitude, and (optionally) altitude coordinates. Inherited from [place](./place.md). |
|hasWiFi|Boolean|Indicates whether the **building** has a wireless network. |
|id|String|The unique identifier for the building. Read-only. This identifier isn't immutable and can change if the mailbox or tenant configuration changes. Inherited from [place](./place.md).|
|isWheelChairAccessible|Boolean|Indicates whether the **building** is wheelchair accessible. Inherited from [place](./place.md). |
|label |String |User-defined description of the building. Inherited from [place](./place.md). |
|parentId|String|The ID of a parent [place](../resources/place.md). Inherited from [place](./place.md).|
|phone|String|The phone number of the **building**. Inherited from [place](./place.md). |
|placeId|String|An alternate immutable unique identifier of the **building**. Read-only. Inherited from [place](./place.md). |
|resourceLinks|[resourceLink](./resourcelink.md) collection|A set of links to external resources that are associated with the **building**. Inherited from [place](./place.md). |
|tags|String collection|Custom tags that are associated with the building for categorization or filtering. Inherited from [place](./place.md). |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|map|[buildingMap](../resources/buildingmap.md)|**TODO: Add Description**|

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
  "address": {"@odata.type": "microsoft.graph.physicalAddress"},
  "displayName": "String",
  "geoCoordinates": {"@odata.type": "microsoft.graph.outlookGeoCoordinates"},
  "hasWiFi": "Boolean",
  "id": "String (identifier)",
  "isWheelChairAccessible": "Boolean",
  "label": "String",
  "parentId": "String",
  "phone": "String",
  "placeId": "String",
  "resourceLinks": [{"@odata.type": "microsoft.graph.resourceLink"}],
  "tags": ["String"]
}
```

