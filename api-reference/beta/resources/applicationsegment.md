---
title: "applicationSegment resource type"
description: "An abstract type for configuring allowed segment configurations for on-premises wildcard apps published through Microsoft Entra application proxy."
ms.localizationpriority: medium
author: "dhruvinrshah"
ms.subservice: "entra-applications"
doc_type: "resourcePageType"
ms.date: 11/28/2024
---

# applicationSegment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that exposes properties for configuring allowed segment configurations for on-premises wildcard apps published through Microsoft Entra application proxy. The following types are derived from this abstract type:
+ [webApplicationSegment](webapplicationsegment.md)
+ [ipApplicationSegment](ipapplicationsegment.md)

## Methods

None.

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
