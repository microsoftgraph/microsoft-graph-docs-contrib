---
title: "cloudPcPoolDeviceGroupingConfiguration resource type"
description: "Represents the device grouping configuration for a Cloud PC pool."
author: "yityu"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 03/23/2026
---

# cloudPcPoolDeviceGroupingConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the device grouping configuration for a Cloud PC pool.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|membershipGroupIds|String collection|The Microsoft Entra group IDs that provisioned Cloud PCs are added to.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcPoolDeviceGroupingConfiguration"
} -->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcPoolDeviceGroupingConfiguration",
  "membershipGroupIds": ["String"]
}
```
