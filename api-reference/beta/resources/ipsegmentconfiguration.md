---
title: "ipSegmentConfiguration resource type"
description: "Represents application segments for an on-premises nonweb application published through Microsoft Entra application proxy."
author: "dhruvinrshah"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
ms.date: 11/28/2024
---

# ipSegmentConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents application segments for an on-premises nonweb application published through Microsoft Entra application proxy.


Inherits from [segmentConfiguration](../resources/segmentconfiguration.md).

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|applicationSegments|[ipApplicationSegment](../resources/ipapplicationsegment.md) collection|A collection of application segments for an on-premises nonweb application published through Microsoft Entra application proxy. It includes the destinationHost and ports.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.ipSegmentConfiguration",
  "baseType": "microsoft.graph.segmentConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.ipSegmentConfiguration"
}
```

