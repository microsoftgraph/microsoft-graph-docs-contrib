---
title: "webApplicationSegment resource type"
description: "Represents the segment configurations that are allowed for an on-premises wildcard application published through Microsoft Entra application proxy."
ms.localizationpriority: medium
author: "dhruvinrshah"
ms.subservice: "entra-applications"
doc_type: "resourcePageType"
ms.date: 12/19/2024
---

# webApplicationSegment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the segment configurations that are allowed for an **on-premises wildcard application** published through Microsoft Entra application proxy and accessed via HTTP.

Inherits from [applicationSegment](applicationsegment.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/websegmentconfiguration-list-applicationsegments.md)|[webApplicationSegment](../resources/webapplicationsegment.md) collection|Get a list of the [webApplicationSegment](../resources/webapplicationsegment.md) objects and their properties.|
|[Create](../api/websegmentconfiguration-post-applicationsegments.md)|[webApplicationSegment](../resources/webapplicationsegment.md)|Create a new [webApplicationSegment](../resources/webapplicationsegment.md) object.|
|[Get](../api/webapplicationsegment-get.md)|[webApplicationSegment](../resources/webapplicationsegment.md)|Read the properties and relationships of a [webApplicationSegment](../resources/webapplicationsegment.md) object.|
|[Update](../api/webapplicationsegment-update.md)|[webApplicationSegment](../resources/webapplicationsegment.md)|Update the properties of a [webApplicationSegment](../resources/webapplicationsegment.md) object.|
|[Delete](../api/websegmentconfiguration-delete-applicationsegments.md)|None|Delete a [webApplicationSegment](../resources/webapplicationsegment.md) object.|

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|alternateUrl|String|If you're configuring a traffic manager in front of multiple app proxy application segments, this property contains the user-friendly URL that points to the traffic manager.|
|externalUrl|String |The published external URL for the application segment; for example, `https://intranet.contoso.com/`.|
|id|String|The unique identifier that is assigned to an applicationSegment by Microsoft Entra ID. Not nullable. Read-only. Supports `$filter` (`eq`). Inherited from [applicationSegment](applicationsegment.md).|
|internalUrl|String |The internal URL of the application segment; for example, `https://intranet/`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|corsConfigurations|[corsConfiguration_v2](corsconfiguration_v2.md) collection|A collection of CORS Rule definitions for a particular application segment.|



## JSON representation

The following JSON representation shows the resource type.
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
