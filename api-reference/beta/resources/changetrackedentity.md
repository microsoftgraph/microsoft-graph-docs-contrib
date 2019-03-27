---
title: "changeTrackedEntity resource type"
description: ""
localization_priority: Normal
---

# changeTrackedEntity resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime| DateTimeOffset| |
|lastModifiedDateTime| DateTimeOffset| |
|lastModifiedBy| [identitySet](identityset.md) | |

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!--{
  "blockType": "resource",
  "@odata.type": "microsoft.graph.changeTrackedEntity",
  "baseType":"microsoft.graph.entity",
  "abstract":true
}-->
``` json
{
    "createdDateTime":"DateTimeOffset",
    "lastModifiedDateTime" :"DateTimeOffset",
    "lastModifiedBy":{"@odata.type":"microsoft.graph.identitySet"}
}
```



