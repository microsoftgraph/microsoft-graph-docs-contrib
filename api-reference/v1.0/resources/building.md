---
title: "building resource type"
description: "Represents a building within the tenant."
author: tiwarisakshi02
ms.date: 11/11/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: resourcePageType
---

# building resource type

Namespace: microsoft.graph

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
|address|[physicalAddress](../resources/physicaladdress.md)|The physical address of the **building**, including the street, city, state, country or region, and postal code. Inherited from [place](./place.md).|
|displayName|String|The name that is associated with the building. Inherited from [place](./place.md).|
|geoCoordinates|[outlookGeoCoordinates](../resources/outlookgeocoordinates.md)|Specifies the **building** location in latitude, longitude, and (optionally) altitude coordinates. Inherited from [place](./place.md).|
|id|String|The unique identifier for the building. Read-only. This identifier isn't immutable and can change if the mailbox or tenant configuration changes. Inherited from [place](./place.md).|
|isWheelChairAccessible|Boolean|Indicates whether the **building** is wheelchair accessible. Inherited from [place](./place.md).|
|label |String |User-defined description of the building. Inherited from [place](./place.md). |
|parentId|String|Currently, buildings don't have a parent. Don't use. Inherited from [place](./place.md).|
|phone|String|The phone number of the **building**. Inherited from [place](./place.md). |
|resourceLinks|[resourceLink](../resources/resourcelink.md) collection|A set of links to external resources that are associated with the **building**. Inherited from [place](./place.md). |
|tags|String collection|Custom tags that are associated with the building for categorization or filtering. Inherited from [place](./place.md).|
|wifiState |placeFeatureEnablement |A state that indicates whether the building has Wi-Fi. The possible values are: `unknown`, `enabled`, `disabled`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|map|[buildingMap](../resources/buildingmap.md)|Map file associated with a building in Places. This object is the IMDF-format representation of building.geojson.|

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
  "id": "String (identifier)",
  "isWheelChairAccessible": "Boolean",
  "label": "String",
  "parentId": "String",
  "phone": "String",
  "resourceLinks": [{"@odata.type": "microsoft.graph.resourceLink"}],
  "tags": ["String"],
  "wifiState": "String"
}
```

