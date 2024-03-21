---
title: "bookingStaffMemberBase resource type"
description: "Abstract base type for Bookings staff members."
author: "davisjms"
ms.localizationpriority: medium
ms.subservice: "microsoft-bookings"
doc_type: resourcePageType
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
Here's a JSON representation of the resource.
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

