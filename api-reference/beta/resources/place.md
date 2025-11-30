---
title: "place resource type"
description: "Represents different space types within a tenant."
author: tiwarisakshi02
ms.date: 08/06/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: resourcePageType
---

# place resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents different space types within a tenant. For more information, see [Working with the Places API in Microsoft Graph](./places-api-overview.md). 

Base type of [building](../resources/building.md), [desk](../resources/desk.md), [floor](../resources/floor.md), [room](../resources/room.md), [roomList](../resources/roomlist.md), [section](../resources/section.md), and [workspace](../resources/workspace.md).

## Methods

|Method |Return type |Description |
|:--|:--|:--|
|[List](../api/place-list.md) |[place](./place.md) collection |Get a collection of the specified type of [place](../resources/place.md) objects defined in a tenant. |
|[Create](../api/place-post.md) |[place](./place.md) |Create a new [place](../resources/place.md) object.| 
|[Get](../api/place-get.md) |[place](./place.md) |Read the properties of a [place](../resources/place.md) object. Returns the requested, derived type of **place**.|
|[Update](../api/place-update.md) |[place](./place.md) |Update the properties of [place](../resources/place.md) object that can be a [building](../resources/building.md), [floor](../resources/floor.md), [section](../resources/section.md), [desk](../resources/desk.md), [room](../resources/room.md), [workspace](../resources/workspace.md), or [roomList](../resources/roomlist.md). |
|[Delete](../api/place-delete.md) |None |Delete a [place](../resources/place.md) object. |
|[Descendants](../api/place-descendants.md) |[place](./place.md) collection|Get all the descendants of a specific type under a [place](../resources/place.md). | 
|[Create check-in claim](../api/place-post-checkins.md)|[checkInClaim](../resources/checkinclaim.md)|Create a new [checkInClaim](../resources/checkinclaim.md) object to record the check-in status for a specific place, such as a [desk](../resources/desk.md), [room](../resources/room.md), or [workspace](../resources/workspace.md), associated with a specific calendar reservation.|
|[Bulk upsert](../api/place-patch-places.md)|Location header|Bulk upsert places in async mode.|
|[Get operation](../api/place-getoperation.md)|[placeOperation](../resources/placeoperation.md)|Get a [placeOperation](../resources/placeoperation.md) by ID.|
|[List operations](../api/place-listoperations.md)|[placeOperation](../resources/placeoperation.md) collection|List all existing [placeOperation](../resources/placeoperation.md) objects.|

## Properties

|Property |Type |Description |
|:--|:--|:--|
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
|children|[place](../resources/place.md) collection|A collection of children places that is only used in the [Bulk upsert](../api/place-patch-places.md) API.|

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

## Related content

[Working with the Places API in Microsoft Graph](./places-api-overview.md)
