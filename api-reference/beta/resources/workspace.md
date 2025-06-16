---
title: "workspace resource type"
description: "Represents a collection of desks."
author: "MSGraphDocsvTeam"
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

Inherits from [place](../resources/place.md).

## Methods

Go to the [place](./place.md) documentation for supported methods.

## Properties

The **workspace** type supports all [base properties of a **place** object](./place.md#base-properties) and the following properties:

|Property |Type |Description |
|:--|:--|:--|
|building |String |The name or identifier of the building where the **workspace** is located. |
|capacity |Integer |The maximum number of individual desks within a **workspace**. |
|displayDeviceName |String |The name of the display device (such as a monitor or projector) that is available in the **workspace**. |
|emailAddress |String |The email address that is associated with the **workspace**. This email address is used for booking. |
|floorLabel |String |A human-readable label for the [floor](./floor.md), such as "Ground Floor". |
|floorNumber |Integer |The numeric floor level within the building. For example, 1 for first floor, 2 for second floor, and so on. |
|label |String |A custom identifier or tag for the **workspace**, often used to distinguish it within a floor or section. |
|mode |placeMode |The mode for a **workspace**. We support 3 modes:
<ul><li>**bookable** - Workspaces that can be booked in advance using desk pool reservation tools</li>
<li>**walkup** - First come, first serve workspaces. As soon as you plug in to a peripheral on one of the desks in the workspace, the desk is booked for you, assuming that the peripheral has been associated to the desk in Teams Pro Management portal</li>
<li>**offline** - Workspaces that are taken down for maintenance or marked as not bookable</li></ul> |
|nickname |String |A short, friendly name for the **workspace**, often used for easier identification or display in the UI. |

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

