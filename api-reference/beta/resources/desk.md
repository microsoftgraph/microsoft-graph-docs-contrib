---
title: "desk resource type"
description: "Represents individual desks."
author: "MSGraphDocsvTeam"
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice:
doc_type: resourcePageType
---

# desk resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents individual desks. A desk must be added to a [section](./section.md).

Inherits from [place](../resources/place.md).

## Methods

Go to the [place](./place.md) documentation for supported methods.

## Properties

The **desk** type supports all [base properties of a **place** object](./place.md#base-properties) and the following properties:

|Property |Type |Description |
|:--|:--|:--|
|mailboxDetails |mailboxDetails |The mailbox object **id** and email address that are associated with the desk. |
|displayDeviceName |String |The name of the display device (such as a monitor or projector) that is available at the desk. |
|Mode |Dictionary |The mode of the desk. We support 4 modes: <br/><br/>
<ul><li>assigned - Desks that are assigned to a user</li>
<li>bookable - Desks that can be booked in advance using desk reservation tools</li>
<li>walkup - First come, first serve desks. When you plug in to a peripheral on one of these desks, the desk is booked for you, assuming that the peripheral is associated to the desk in Teams Pro Management portal</li>
<li>offline - Desk that is taken down for maintenance or marked as not bookable.</li></ul> |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.desk",
  "baseType": "microsoft.graph.place",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.desk",
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
  "displayDeviceName": "String",
  "mailboxDetails": {
    "@odata.type": "microsoft.graph.mailboxDetails"
  },
  "mode": {
    "@odata.type": "microsoft.graph.placeMode"
  }
}
```

