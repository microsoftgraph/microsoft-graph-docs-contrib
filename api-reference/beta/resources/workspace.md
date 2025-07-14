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

Represents a collection of desks. A [workspace](./workspace.md) can be added to a [floor](./floor.md) or a [section](./section.md).

Inherits from [place](./place.md).

## Methods

|Method |Return |Type |Description |
|:--|:--|:--|:--|
|[List](../api/roomlist-list-workspaces.md)|[workspace](./workspace.md) collection|Get a list of **workspace** objects and their properties.|
|[Create](../api/roomlist-post-workspaces.md)|[workspace](./workspace.md)|Create a new **workspace** object.|
|[Get](../api/workspace-get.md)|[workspace](./workspace.md)|Read the properties and relationships of a **workspace** object.|
|[Update](../api/workspace-update.md)|[workspace](./workspace.md)|Update the properties of a **workspace** object.|
|[Delete](../api/roomlist-delete-workspaces.md)|None|Delete a **workspace** object.|
|[descendants](../api/place-descendants.md) |List of [place](../resources/place.md) objects |Get all the descendants of a specific type (for example, [desks](./desk.md)) under a **workspace**. | 

## Properties
|Property |Type |Description |
|:--|:--|:--|
|address|[physicalAddress](./physicaladdress.md)|The physical address of the **workspace**, including the street, city, state, country or region, and postal code. Inherited from [place](./place.md).|
|building |String |The name or identifier of the building where the **workspace** is located. |
|capacity|Int32|The maximum number of individual desks within a **workspace**. |
|displayDeviceName|String|The name of the display device (for example, `monitor` or `projector`) that is available in the **workspace**.|
|displayName|String|The name that is associated with the **workspace**. Inherited from [place](./place.md).|
|emailAddress|String|The email address that is associated with the **workspace**. This email address is used for booking.|
|floorLabel|String|A human-readable label for the [floor](./floor.md); for example, `Ground Floor`. |
|floorNumber|Int32|The numeric floor level within the building. For example, `1` for first floor, `2` for second floor, and so on. |
|geoCoordinates|[outlookGeoCoordinates](./outlookgeocoordinates.md)|Specifies the **workspace** location in latitude, longitude, and (optionally) altitude coordinates. Inherited from [place](./place.md).|
|id|String|The unique identifier for the **workspace**. Read-only. This identifier isn't immutable and can change if the mailbox or tenant configuration changes. Inherited from [place](./place.md). |
|isWheelChairAccessible|Boolean|Indicates whether the **workspace** is wheelchair accessible. Inherited from [place](./place.md).|
|label |String |User-defined description of the **workspace**. Inherited from [place](../resources/place.md).|
|mode|[placeMode](./placemode.md) |The mode for a **workspace**. The supported modes are:<ul><li>`reservable` - Workspaces that can be booked in advance using desk pool reservation tools.</li><li>`dropin` - First come, first served desks. When you plug into a peripheral on one of these desks in the workspace, the desk is booked for you, assuming that the peripheral has been associated with the desk in the Teams Pro management portal.</li><li>`offline` - Workspaces that are taken down for maintenance or marked as not reservable.</li></ul> |
|nickname|String|A short, friendly name for the **workspace**, often used for easier identification or display in the UI. |
|parentId|String|The ID of a parent [section](./section.md) or [floor](./floor.md). Inherited from [place](./place.md). |
|phone|String|The phone number of the **workspace**. Inherited from [place](./place.md). |
|placeId|String|An alternate immutable unique identifier of the **workspace**. Read-only. Inherited from [place](../resources/place.md).|
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
  "address": {"@odata.type": "microsoft.graph.physicalAddress"},
  "building": "String",
  "capacity": "Int32",
  "displayDeviceName": "String",
  "displayName": "String",
  "emailAddress": "String",
  "floorLabel": "String",
  "floorNumber": "Int32",
  "geoCoordinates": {"@odata.type": "microsoft.graph.outlookGeoCoordinates"},
  "id": "String (identifier)",
  "isWheelChairAccessible": "Boolean",
  "label": "String",
  "mode": {"@odata.type": "microsoft.graph.placeMode"},
  "nickname": "String",
  "parentId": "String",
  "phone": "String",
  "placeId": "String",
  "resourceLinks": [{"@odata.type": "microsoft.graph.resourceLink"}],
  "tags": ["String"]
}
```

