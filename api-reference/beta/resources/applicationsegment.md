---
title: "applicationSegment resource type"
description: "Represents an abstract type that exposes properties used to configure allowed segment configurations for on-premises wildcard applications that are published through Microsoft Entra application proxy."
ms.localizationpriority: medium
author: "dhruvinrshah"
ms.subservice: "entra-applications"
doc_type: "resourcePageType"
ms.date: 07/26/2024
---

# applicationSegment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an abstract resource type that exposes properties used to configure allowed segment configurations that on-premises wildcard applications that are published through Microsoft Entra application proxy. The following types are derived from this abstract type:
+ [webApplicationSegment](webapplicationsegment.md)

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String|The unique identifier that is assigned to an application segment by Microsoft Entra ID. Not nullable. Read-only. Supports `$filter` (`eq`).  |

## Relationships

None.

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
