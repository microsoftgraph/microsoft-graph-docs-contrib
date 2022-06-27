---
title: "writebackConfiguration resource type"
description: "This complex type will represent a writeback state on cloud groups."
author: "psaffaie"
ms.localizationpriority: medium
ms.prod: "groups"
doc_type: resourcePageType
---

# writebackConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This complex type will represent a writeback state on cloud groups.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isEnabled|Boolean|Indicates whether writeback of cloud groups to on-premise Active Directory is enabled. Default value is `true` for M365 groups and `false` for security groups.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.writebackConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.writebackConfiguration",
  "isEnabled": "Boolean"
}
```

