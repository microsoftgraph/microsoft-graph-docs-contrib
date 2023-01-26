---
title: "webApplicationSegment resource type"
description: "Represents the segment configurations that are allowed for an on-premises wildcard application published through Azure AD Application Proxy."
ms.localizationpriority: medium
author: "dhruvinshah"
ms.prod: "applications"
doc_type: "resourcePageType"
---

# webApplicationSegment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A [webApplicationSegment](webapplicationsegment.md) object represents the segment configurations that are allowed for an on-premises wildcard application published through Azure AD Application Proxy.

Inherits from [applicationSegment](applicationsegment.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|alternateUrl|String|If you're configuring a traffic manager in front of multiple App Proxy application segments, this property contains the user-friendly URL that will point to the traffic manager.|
|externalUrl|String |The published external URL for the application segment; for example, `https://intranet.contoso.com/`.|
|id|String|The unique identifier that is assigned to an applicationSegment by Azure AD. Not nullable. Read-only. Supports `$filter` (`eq`). Inherited from [applicationSegment](applicationsegment.md).|
|internalUrl|String |The internal URL of the application segment; for example, `https://intranet/`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|corsConfigurations|[corsConfiguration_v2](corsconfiguration_v2.md) collection|A collection of CORS Rule definitions for a particular application segment.|



## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.webApplicationSegment"
}
-->
``` json
{
  "@odata.type": "microsoft.graph.webApplicationSegment",
  "alternateUrl": "String",
  "externalUrl": "String",
  "internalUrl": "String"
}
```
