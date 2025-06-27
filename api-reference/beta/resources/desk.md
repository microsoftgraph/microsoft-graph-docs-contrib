---
title: "desk resource type"
description: "Represents individual desks."
author: tiwarisakshi02
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice:
doc_type: resourcePageType
---

# desk resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents individual desks.

Inherits from [place](./place.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/desk-list.md)|[desk](./desk.md) collection|Get a list of **desk** objects and their properties.|
|[Get](../api/desk-get.md)|[desk](./desk.md)|Read the properties and relationships of a **desk** object.|
|[Update](../api/desk-update.md)|[desk](./desk.md)|Update the properties of a **desk** object.|
|[Delete](../api/desk-delete.md)|None|Delete a **desk** object.|
|[descendants](../api/desk-descendants.md)|[place](./place.md) collection|Returns the list of objects whose parent is the given **desk**. In practice, this method always returns an empty list because there are no object types that can have a **desk** as a parent. |

## Properties
|Property |Type |Description |
|:--|:--|:--|
|address|[physicalAddress](./physicaladdress.md)|The physical address of the **desk**, including the street, city, state, country or region, and postal code. Inherited from [place](./place.md).|
|description |String |User-defined description of the **desk**. (This property is referred to as **label** in the Places PowerShell cmdlet and on Places version 1 objects.) Inherited from [place](../resources/place.md).|
|displayDeviceName |String |The name of the display device (such as a monitor or projector) that is available at the **desk**. |
|displayName|String|The name that is associated with the **desk**. Inherited from [place](./place.md).|
|geoCoordinates|[outlookGeoCoordinates](./outlookgeocoordinates.md)|Specifies the **desk** location in latitude, longitude, and (optionally) altitude coordinates. Inherited from [place](./place.md).|
|id|String|A unique identifier for the **desk**. Read-only. This identifier isn't immutable and can change if there are changes to the mailbox or the tenant configuration. Inherited from [entity](./entity.md). |
|isWheelChairAccessible|Boolean|Whether or not the **desk** is wheelchair accessible. Inherited from [place](./place.md).|
|mailboxDetails |mailboxDetails |The mailbox object **id** and email address that are associated with the desk. |
|mode |[placeMode](./placemode.md) |The mode of the desk. We support 4 modes:
<ul><li>**assigned** - Desks that are assigned to a user</li>
<li>**bookable** - Desks that can be booked in advance using desk reservation tools</li>
<li>**walkup** - First come, first serve desks. When you plug in to a peripheral on one of these desks, the desk is booked for you, assuming that the peripheral is associated to the desk in Teams Pro Management portal</li>
<li>**offline** - Desk that is taken down for maintenance or marked as not bookable.</li></ul> |
|parentId|String|**id**** of a parent [place](../resources/place.md). Inherited from [place](./place.md).|
|phone|String|The phone number of the **desk**. Inherited from [place](./place.md).|
|placeId|String|An alternate immutable unique identifier of the **desk**. Read-only. Inherited from [place](./place.md).|
|resourceLinks|[resourceLink](./resourcelink.md) collection|A set of links to external resources that are associated with the **desk**. Inherited from [place](./place.md).|
|tags|String collection|Custom tags that are associated with the **desk** for categorization or filtering. Inherited from [place](./place.md).|

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

