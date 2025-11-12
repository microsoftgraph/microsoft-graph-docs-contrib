---
title: "desk resource type"
description: "Represents individual desks."
author: tiwarisakshi02
ms.date: 11/11/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: resourcePageType
---

# desk resource type

Namespace: microsoft.graph

Represents individual desks.

Inherits from [place](../resources/place.md).


## Methods
For the list of supported methods, see [place](./place.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|address|[physicalAddress](./physicaladdress.md)|The physical address of the **desk**, including the street, city, state, country or region, and postal code. Inherited from [place](./place.md).|
|displayDeviceName |String |The name of the display device (for example, `monitor` or `projector`) that is available at the **desk**. |
|displayName|String|The name that is associated with the **desk**. Inherited from [place](./place.md).|
|geoCoordinates|[outlookGeoCoordinates](./outlookgeocoordinates.md)|Specifies the **desk** location in latitude, longitude, and (optionally) altitude coordinates. Inherited from [place](./place.md).|
|id|String|The unique identifier for the **desk**. Read-only. This identifier isn't immutable and can change if the mailbox or tenant configuration changes. Inherited from [place](./place.md). |
|isWheelChairAccessible|Boolean|Indicates whether the **desk** is wheelchair accessible. Inherited from [place](./place.md).|
|label |String |User-defined description of the **desk**. Inherited from [place](../resources/place.md).|
|mailboxDetails |[mailboxDetails](mailboxdetails.md) |The mailbox object **id** and email address that are associated with the desk. |
|mode |[placeMode](./placemode.md) |The mode of the desk. The supported modes are:<ul><li>[assignedPlaceMode](./assignedplacemode.md) - Desks that are assigned to a user.</li><li>[reservablePlaceMode](./reservableplacemode.md) - Desks that can be booked in advance using desk reservation tools.</li><li>[dropInPlaceMode](./dropinplacemode.md) - First come, first served desks. When you plug into a peripheral on one of these desks, the desk is booked for you, assuming the peripheral is associated with the desk in the Microsoft Teams Rooms Pro management portal.</li></ul> |
|parentId|String|The ID of a parent [section](./section.md). Inherited from [place](./place.md).|
|phone|String|The phone number of the **desk**. Inherited from [place](./place.md).|
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
  "parentId": "String",
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

