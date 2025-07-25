---
title: "desk resource type"
description: "Represents individual desks."
author: tiwarisakshi02
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice: outlook
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
|[List](../api/desk-list.md)|[desk](./desk.md) collection|Get a list of [desk](../resources/desk.md) objects and their properties.|
|[Get](../api/desk-get.md)|[desk](./desk.md)|Read the properties and relationships of a [desk](../resources/desk.md) object.|
|[Update](../api/desk-update.md)|[desk](./desk.md)|Update the properties of a [desk](../resources/desk.md) object.|
|[Delete](../api/desk-delete.md)|None|Delete a [desk](../resources/desk.md) object.|
|[descendants](../api/desk-descendants.md)|[place](./place.md) collection|Get all the descendants of a specific type under a [desk](../resources/place.md). |

## Properties
|Property |Type |Description |
|:--|:--|:--|
|address|[physicalAddress](./physicaladdress.md)|The physical address of the **desk**, including the street, city, state, country or region, and postal code. Inherited from [place](./place.md).|
|displayDeviceName |String |The name of the display device (for example, `monitor` or `projector`) that is available at the **desk**. |
|displayName|String|The name that is associated with the **desk**. Inherited from [place](./place.md).|
|geoCoordinates|[outlookGeoCoordinates](./outlookgeocoordinates.md)|Specifies the **desk** location in latitude, longitude, and (optionally) altitude coordinates. Inherited from [place](./place.md).|
|id|String|The unique identifier for the **desk**. Read-only. This identifier isn't immutable and can change if the mailbox or tenant configuration changes. Inherited from [place](./place.md). |
|isWheelChairAccessible|Boolean|Indicates whether the **desk** is wheelchair accessible. Inherited from [place](./place.md).|
|label |String |User-defined description of the **desk**. Inherited from [place](../resources/place.md).|
|mailboxDetails |[mailboxDetails](mailboxdetails.md) |The mailbox object **id** and email address that are associated with the desk. |
|mode |[placeMode](./placemode.md) |The mode of the desk. The supported modes are:<ul><li>`assigned` - Desks that are assigned to a user.</li><li>`reservable` - Desks that can be booked in advance using desk reservation tools.</li><li>`dropin` - First come, first served desks. When you plug into a peripheral on one of these desks, the desk is booked for you, assuming the peripheral is associated with the desk in the Teams Pro management portal.</li><li>`offline` - Desk that is taken down for maintenance or marked as not reservable.</li></ul> |
|parentId|String|The ID of a parent [place](../resources/place.md). Inherited from [place](./place.md).|
|phone|String|The phone number of the **desk**. Inherited from [place](./place.md).|
|placeId|String|An alternate immutable unique identifier of the **desk**. Read-only. Inherited from [place](./place.md).|
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
  "address": {"@odata.type": "microsoft.graph.physicalAddress"},
  "displayDeviceName": "String",
  "displayName": "String",
  "geoCoordinates": {"@odata.type": "microsoft.graph.outlookGeoCoordinates"},
  "id": "String (identifier)",
  "isWheelChairAccessible": "Boolean",
  "label": "String",
  "mailboxDetails": {"@odata.type": "microsoft.graph.mailboxDetails"},
  "mode": {"@odata.type": "microsoft.graph.placeMode"},
  "parentId": "String",
  "phone": "String",
  "placeId": "String",
  "tags": ["String"]
}
```

