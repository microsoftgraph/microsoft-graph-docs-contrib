---
title: "place resource type"
description: "Represents different space types within a tenant."
author: tiwarisakshi02
ms.date: 11/11/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: resourcePageType
---

# place resource type

Namespace: microsoft.graph

An abstract type representing different space types within a tenant. For more information, see [Working with the Places API in Microsoft Graph](./places-api-overview.md). 

Base type of [building](../resources/building.md), [desk](../resources/desk.md), [floor](../resources/floor.md), [room](../resources/room.md), [roomList](../resources/roomlist.md), [section](../resources/section.md), and [workspace](../resources/workspace.md).

Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/place-list.md)|[place](../resources/place.md) collection|Get a list of the place objects and their properties.|
|[Create](../api/place-post-places.md)|[place](../resources/place.md)|Create a new place object.|
|[Get](../api/place-get.md)|[place](../resources/place.md)|Read the properties and relationships of [place](../resources/place.md) object.|
|[Update](../api/place-update.md)|[place](../resources/place.md)|Update the properties of a place object.|
|[Delete](../api/place-delete.md)|None|Delete a place object.|
|[Descendants](../api/place-descendants.md) |[place](./place.md) collection|Get all the descendants of a specific type under a [place](../resources/place.md). |
<!-- |[List checkIns](../api/place-list-checkins.md)|[checkInClaim](../resources/checkinclaim.md) collection|**TODO: Add a useful description.**|
|[Create checkInClaim](../api/place-post-checkins.md)|[checkInClaim](../resources/checkinclaim.md)|Create a new checkInClaim object.| -->

## Properties
|Property|Type|Description|
|:---|:---|:---|
|address |[physicalAddress](./physicaladdress.md) |The physical address of the **place**, including the street, city, state, country or region, and postal code. |
|label |String |User-defined description of the **place**.|
|displayName |String |The name that is associated with the **place**. |
|geoCoordinates|[outlookGeoCoordinates](./outlookgeocoordinates.md)|Specifies the **place** location in latitude, longitude, and (optionally) altitude coordinates.|
|id |String |The unique identifier for the **place**. Read-only. This identifier isn't immutable and can change if the mailbox or tenant configuration changes. |
|isWheelChairAccessible |Boolean |Indicates whether the **place** is wheelchair accessible. |
|parentId |String |The ID of a parent **place**. |
|phone |String |The phone number of the **place**. |
|tags |String collection |Custom tags that are associated with the **place** for categorization or filtering. |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|checkIns| [checkInClaim](../resources/checkinclaim.md) collection | A subresource of a **place** object that indicates the check-in status of an Outlook calendar event booked at the place. |

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.place",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.place",
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

