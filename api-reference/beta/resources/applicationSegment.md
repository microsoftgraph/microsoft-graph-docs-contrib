---
title: "applicationSegment resource type"
description: "Represents applicationSegment object when publishing an on-premises wildcard application with Azure AD Application Proxy."
ms.localizationpriority: medium
author: "dhruvinshah"
ms.prod: "applications"
doc_type: "resourcePageType"
---

# applicationSegment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This is an abstract type noting the application segment types when publishing an on-premises wildcard application with Azure AD Application Proxy. The following types are derived from this abstract type:
+ [webApplicationSegment](webApplicationSegment.md)

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String|The unique identifier for the CORS configuration that is assigned to a CORS rule by Azure AD. Not nullable. Read-only. Supports `$filter` (`eq`).  |

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.applicationSegment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.applicationSegment"
}
```
