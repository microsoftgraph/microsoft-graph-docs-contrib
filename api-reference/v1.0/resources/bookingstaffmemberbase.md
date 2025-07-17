---
title: "bookingStaffMemberBase resource type"
description: "Abstract base type for Bookings staff members."
author: "davisjms"
ms.localizationpriority: medium
ms.subservice: "microsoft-bookings"
doc_type: resourcePageType
ms.date: 04/03/2024
---

# bookingStaffMemberBase resource type

Namespace: microsoft.graph

Abstract base type for Bookings staff members.

Base type of [bookingStaffMember](bookingstaffmember.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|ID of the staff member. Inherited from [entity](../resources/entity.md).|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.bookingStaffMemberBase",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.bookingStaffMemberBase",
  "id": "String (identifier)"
}
```

