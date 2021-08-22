---
title: "m365AlertComment resource type"
description: "An analyst generated comment that is associated with an alert or incident. "
author: "bealfasi"
localization_priority: Normal
ms.prod: "security"
doc_type: resourcePageType
---

# m365AlertComment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An analyst generated comment that is associated with an alert or incident. 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|comment|String|The comment text.|
|createdByDisplayName|String|The person or app name that submitted the comment.|
|createdDateTime|DateTimeOffset|The time the comment was submitted.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.m365AlertComment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.m365AlertComment",
  "comment": "String",
  "createdByDisplayName": "String",
  "createdDateTime": "String (timestamp)"
}
```

