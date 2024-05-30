---
title: "webSegmentConfiguration resource type"
description: "Represents application segments for an on-premises wildcard application published through Microsoft Entra application proxy."
ms.localizationpriority: medium
author: "dhruvinrshah"
ms.subservice: "entra-applications"
doc_type: "resourcePageType"
---

# webSegmentConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A [webSegmentConfiguration](websegmentconfiguration.md) object represents application segments for an on-premises wildcard application published through Microsoft Entra application proxy.

Inherits from [segmentsConfiguration](segmentconfiguration.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|applicationSegments|[webApplicationSegment](webapplicationsegment.md) collection|A collection of application segments for an on-premises wildcard application published through Microsoft Entra application proxy. It includes the internal URL, external URL, alternate URLs, and cors configurations. |


## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.onPremisesApplicationSegment"
}
-->
``` json
{
 "@odata.type": "#microsoft.graph.webSegmentConfiguration",
 "applicationSegments": [
    {
      "@odata.type": "microsoft.graph.webApplicationSegment"
    }
  ],
}
```
