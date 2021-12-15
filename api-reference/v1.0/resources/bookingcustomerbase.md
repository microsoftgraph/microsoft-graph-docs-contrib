---
title: "bookingCustomerBase resource type"
description: Abstract base type for Bookings customers.
author: "davisjms"
ms.localizationpriority: medium
ms.prod: "bookings"
doc_type: resourcePageType
---

# bookingCustomerBase resource type

Namespace: microsoft.graph

Abstract base type for Bookings customers.

Base type of [bookingCustomer](bookingcustomer.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|ID of the customer. Inherited from [entity](../resources/entity.md).|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.bookingCustomerBase",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.bookingCustomerBase",
  "id": "String (identifier)"
}
```

