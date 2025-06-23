---
title: "workspace resource type"
description: "Represents a collection of desks."
author: tiwarisakshi02
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice:
doc_type: resourcePageType
---

# workspace resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a collection of desks.

A [workspace](./workspace.md) can be added to a [floor](./floor.md) or a [section](./section.md).

Inherits from [place](./place.md).

## Methods

|Method |Return |Type |Description |
|:--|:--|:--|:--|
|[List](../api/roomlist-list-workspaces.md)|[workspace](./workspace.md) collection|Get a list of **workspace** objects and their properties.|
|[Create](../api/roomlist-post-workspaces.md)|[workspace](./workspace.md)|Create a new **workspace** object.|
|[Get](../api/workspace-get.md)|[workspace](./workspace.md)|Read the properties and relationships of a **workspace** object.|
|[Update](../api/workspace-update.md)|[workspace](./workspace.md)|Update the properties of a **workspace** object.|
|[Delete](../api/roomlist-delete-workspaces.md)|None|Delete a **workspace** object.|
|[descendants](../api/place-descendants.md) |List of **place** objects |Returns the list of [desk](./desk.md) objects whose parent is the given **workspace**. | 

## Properties

|Property |Type |Description |
|:--|:--|:--|
|address|[physicalAddress](./physicaladdress.md)|The physical address of the **place**, including the street, city, state, country or region, and postal code. Inherited from [place](./place.md).|
|building |String |The name or identifier of the building where the **workspace** is located. |
|capacity|Int32|The maximum number of individual desks within a **workspace**. |
|description |String |User-defined description of the **workspace**. (This property is referred to as **label** in the Places PowerShell cmdlet and on Places version 1 objects.) |
|displayDeviceName|String|The name of the display device (such as a monitor or projector) that is available in the **workspace**.|
|displayName|String|The name that is associated with the **workspace**. Inherited from [place](./place.md).|
|emailAddress|String|The email address that is associated with the **workspace**. This email address is used for booking.|
|floorLabel|String|A human-readable label for the [floor](./floor.md), such as "Ground Floor". |
|floorNumber|Int32|The numeric floor level within the building. For example, 1 for first floor, 2 for second floor, and so on. |
|geoCoordinates|[outlookGeoCoordinates](./outlookgeocoordinates.md)|Specifies the **workspace** location in latitude, longitude, and (optionally) altitude coordinates. Inherited from [place](./place.md).|
|id|String|A unique identifier for the **workspace**. Read-only. This identifier isn't immutable and can change if there are changes to the mailbox or the tenant configuration. Inherited from [entity](./entity.md). |
|isWheelChairAccessible|Boolean|Whether or not the **workspace** is wheelchair accessible. Inherited from [place](./place.md).|
|mode|[placeMode](./placemode.md) |The mode for a **workspace**. We support 3 modes:
<ul><li>**bookable** - Workspaces that can be booked in advance using desk pool reservation tools</li>
<li>**walkup** - First come, first serve workspaces. As soon as you plug in to a peripheral on one of the desks in the workspace, the desk is booked for you, assuming that the peripheral has been associated to the desk in Teams Pro Management portal</li>
<li>**offline** - Workspaces that are taken down for maintenance or marked as not bookable</li></ul> |
|nickname|String|A short, friendly name for the **workspace**, often used for easier identification or display in the UI. |
|parentId|String|**id** of a parent [section](./section.md) or [floor](./floor.md). Inherited from [place](./place.md). |
|phone|String|The phone number of the **workspace**. Inherited from [place](./place.md). |
|placeId|String|An alternate immutable unique identifier of the **workspace**. Read-only. |
|resourceLinks|[resourceLink](./resourcelink.md) collection|A set of links to external resources that are associated with the **workspace**. Inherited from [place](./place.md). |
|tags|String collection|Custom tags that are associated with the **workspace** for categorization or filtering. Inherited from [place](./place.md). |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.workspace",
  "baseType": "microsoft.graph.place",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.workspace",
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
  "emailAddress": "String",
  "nickname": "String",
  "building": "String",
  "floorNumber": "Integer",
  "capacity": "Integer",
  "floorLabel": "String",
  "displayDeviceName": "String",
  "mode": {
    "@odata.type": "microsoft.graph.placeMode"
  }
}
```

