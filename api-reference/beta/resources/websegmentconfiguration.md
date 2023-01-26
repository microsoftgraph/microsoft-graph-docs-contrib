---
title: "webSegmentConfiguration resource type"
description: "Represents webSegmentConfiguration object when publishing an on-premises wildcard application with Azure AD Application Proxy."
ms.localizationpriority: medium
author: "dhruvinshah"
ms.prod: "applications"
doc_type: "resourcePageType"
---

# webSegmentConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a [webSegmentConfiguration](websegmentconfiguration.md) object when publishing an on-premises wildcard application with Azure AD Application Proxy. This resource is used for setting an application segment for a particular wildcard application.

Inherits from [segmentsConfiguration](segmentconfiguration.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|applicationSegments|[webApplicationSegment](webapplicationsegment.md) collection|Represents a [webApplicationSegment](webapplicationsegment.md) object when publishing an on-premises wildcard application with Azure AD Application Proxy. This resource is used for setting an application segment for a particular wildcard application.|


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
