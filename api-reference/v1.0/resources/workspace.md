---
title: "workspace resource type"
description: "Represents a collection of desks."
author: tiwarisakshi02
ms.date: 11/11/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: resourcePageType
---

# workspace resource type

Namespace: microsoft.graph

Represents a collection of desks. A [workspace](./workspace.md) can be added to a [section](./section.md).

Inherits from [place](./place.md).

## Methods
For the list of supported methods, see [place](./place.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|address|[physicalAddress](../resources/physicaladdress.md)|The physical address of the **workspace**, including the street, city, state, country or region, and postal code. Inherited from [place](../resources/place.md).|
|capacity|Int32|The maximum number of individual desks within a **workspace**.|
|displayDeviceName|String|The name of the display device (for example, `monitor` or `projector`) that is available in the **workspace**.|
|displayName|String|The name that is associated with the **workspace**. Inherited from [place](./place.md).|
|emailAddress|String|The email address that is associated with the **workspace**. This email address is used for booking.|
|geoCoordinates|[outlookGeoCoordinates](../resources/outlookgeocoordinates.md)|Specifies the **workspace** location in latitude, longitude, and (optionally) altitude coordinates. Inherited from [place](../resources/place.md).|
|id|String|The unique identifier for the **workspace**. Read-only. This identifier isn't immutable and can change if the mailbox or tenant configuration changes. Inherited from [entity](../resources/entity.md). |
|isWheelChairAccessible|Boolean|Indicates whether the **workspace** is wheelchair accessible. Inherited from [place](../resources/place.md).|
|label|String|User-defined description of the **workspace**. Inherited from [place](../resources/place.md).|
|mode|[placeMode](../resources/placemode.md)|The mode for a **workspace**. The supported modes are:<ul><li>[reservablePlaceMode](./reservableplacemode.md) - Workspaces that can be booked in advance using desk pool reservation tools.</li><li>[dropInPlaceMode](./dropinplacemode.md) - First come, first served desks. When you plug into a peripheral on one of these desks in the workspace, the desk is booked for you, assuming that the peripheral has been associated with the desk in the Microsoft Teams Rooms pro management portal.</li><li>[unavailablePlaceMode](./unavailableplacemode.md) - Workspaces that are taken down for maintenance or marked as not reservable.</li></ul>|
|nickname|String|A short, friendly name for the **workspace**, often used for easier identification or display in the UI. |
|parentId|String|The ID of a parent [section](./section.md). Inherited from [place](./place.md). |
|phone|String|The phone number of the **workspace**. Inherited from [place](./place.md). |
|placeId|String|An alternative immutable unique identifier of the **workspace**. Read-only.|
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
  "address": {"@odata.type": "microsoft.graph.physicalAddress"},
  "capacity": "Integer",
  "displayDeviceName": "String",
  "displayName": "String",
  "emailAddress": "String",
  "geoCoordinates": {"@odata.type": "microsoft.graph.outlookGeoCoordinates"},
  "id": "String (identifier)",
  "isWheelChairAccessible": "Boolean",
  "label": "String",
  "mode": {"@odata.type": "microsoft.graph.placeMode"},
  "nickname": "String",
  "parentId": "String",
  "phone": "String",
  "placeId": "String (alternative identifier)",
  "tags": ["String"]
}
```

