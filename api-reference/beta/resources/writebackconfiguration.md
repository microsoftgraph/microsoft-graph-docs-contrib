---
title: "writebackConfiguration resource type"
description: "Represents a writeback state on Microsoft Entra cloud groups (Microsoft 365 and security groups)."
author: "yuhko-msft"
ms.reviewer: "mbhargav, khotzteam, aadgroupssg"
ms.localizationpriority: medium
ms.subservice: "entra-groups"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# writebackConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a writeback state on Microsoft Entra cloud groups (Microsoft 365 and security groups).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isEnabled|Boolean|Indicates whether writeback of cloud groups to on-premise Active Directory is enabled. Default value is `true` for Microsoft 365 groups and `false` for security groups.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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
