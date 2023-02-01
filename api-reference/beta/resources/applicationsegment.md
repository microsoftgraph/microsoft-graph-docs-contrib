---
title: "applicationSegment resource type"
description: "An abstract type that exposes properties used to configure segment configurations that are allowed for an on-premises wildcard application that's published through Azure AD Application Proxy."
ms.localizationpriority: medium
author: "dhruvinshah"
ms.prod: "applications"
doc_type: "resourcePageType"
---

# applicationSegment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This is an abstract type that exposes properties used to configure segment configurations that are allowed for an on-premises wildcard application that's published through Azure AD Application Proxy. The following types are derived from this abstract type:
+ [webaApplicationSegment](webapplicationsegment.md)

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String|The unique identifier that is assigned to an application segment by Azure AD. Not nullable. Read-only. Supports `$filter` (`eq`).  |

## JSON representation

The following is a JSON representation of the resource.
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
