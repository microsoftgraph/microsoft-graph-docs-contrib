---
title: "cloudPcAgentPoolScalingPolicy resource type"
description: "Represents the scaling policy for a Cloud PC agent pool."
author: "yityu"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 03/23/2026
---

# cloudPcAgentPoolScalingPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the scaling policy for a Cloud PC agent pool.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|maximumCount|Int32|The maximum number of Cloud PCs in the pool. The valid values are `1` to `900`, and must be greater than or equal to **minimumCount**.|
|minimumCount|Int32|The minimum number of Cloud PCs in the pool. The valid values are `0` to `900`, and must be less than or equal to **maximumCount**.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcAgentPoolScalingPolicy"
} -->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcAgentPoolScalingPolicy",
  "maximumCount": "Int32",
  "minimumCount": "Int32"
}
```
