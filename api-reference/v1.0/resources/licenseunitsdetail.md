---
title: "licenseUnitsDetail resource type"
description: "The **prepaidUnits** property of the subscribedSku entity is of type **licenseUnitsDetail**."
localization_priority: Normal
author: "jpettere"
ms.prod: "directory-management"
doc_type: resourcePageType
---

# licenseUnitsDetail resource type

Namespace: microsoft.graph

The **prepaidUnits** property of the [subscribedSku](subscribedsku.md) entity is of type **licenseUnitsDetail**.

## Properties
| Property	   | Type	|Description|
|:-------------|:-----|:----------|
|enabled|Int32| The number of units that are enabled for the active subscription of the service SKU.  |
|suspended|Int32| The number of units that are suspended because the subscription of the service SKU has been cancelled. The units can still be reactivated before they are deleted. |
|warning|Int32| The number of units that are in warning status. When the subscription of the service SKU has expired and not auto-renewable, the customer has a 30 day grace period to renew their subscription before it is cancelled (moved to a **suspended** state).  |

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.licenseUnitsDetail"
}-->

```json
{
  "enabled": 1024,
  "suspended": 1024,
  "warning": 1024
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "licenseUnitsDetail resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

