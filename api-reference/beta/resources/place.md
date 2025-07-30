---
title: "place resource type"
description: "Provides details of place within a tenant."
author: tiwarisakshi02
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: resourcePageType
---

# place resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents different space types within a tenant. For more information, refer to the [overview](./placesapioverview.md) page. 

A **place** object has the following properties.

## Properties

|Property |Type |Description |
|:--|:--|:--|
|address |[physicalAddress](./physicaladdress.md) |The physical address of the **place**, including the street, city, state, country or region, and postal code. |
|label |String |User-defined description of the **place**.|
|displayName |String |The name that is associated with the **place**. |
|geoCoordinates|[outlookGeoCoordinates](./outlookgeocoordinates.md)|Specifies the **place** location in latitude, longitude, and (optionally) altitude coordinates. |
|id |String |The unique identifier for the **place**. Read-only. This identifier isn't immutable and can change if the mailbox or tenant configuration changes. |
|isWheelChairAccessible |Boolean |Indicates whether the **place** is wheelchair accessible. |
|parentId |String |The ID of a parent **place**. |
|phone |String |The phone number of the **place**. |
|placeId |String |An alternate immutable unique identifier of the **place**. Read-only. |
|tags |String collection |Custom tags that are associated with the **place** for categorization or filtering. |

## Relationships
None.

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
  "placeId": "String",
  "tags": ["String"]
}
```

