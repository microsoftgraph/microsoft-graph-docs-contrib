---
title: "applicationSegment resource type"
description: "An abstract type that exposes properties used to configure segment configurations that are allowed for an on-premises wildcard application that's published through Microsoft Entra application proxy."
ms.localizationpriority: medium
author: "dhruvinrshah"
ms.subservice: "entra-applications"
doc_type: "resourcePageType"
---

# applicationSegment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This resource type is an abstract type that exposes properties used to configure segment configurations that are allowed for an on-premises wildcard application that's published through Microsoft Entra application proxy. The following types are derived from this abstract type:
+ [webApplicationSegment](webapplicationsegment.md)

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String|The unique identifier that is assigned to an application segment by Microsoft Entra ID. Not nullable. Read-only. Supports `$filter` (`eq`).  |

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.applicationSegment"
}
-->
``` json
{
  "@odata.type": "microsoft.graph.applicationSegment",
  "id": "String (identifier)"
}
```
