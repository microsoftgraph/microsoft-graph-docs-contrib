---
title: "printerShareViewpoint resource type"
description: "Additional data for a printer share as viewed by user"
author: "mayankbansal018"
ms.localizationpriority: medium
ms.prod: "cloud-printing"
doc_type: resourcePageType
---

# printerShareViewpoint resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Additional data for a printer share as viewed by user

## Properties
|Property|Type|Description|
|:---|:---|:---|
|lastUsedDateTime|DateTimeOffset|When printer was last used by user|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.printerShareViewpoint"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printerShareViewpoint",
  "lastUsedDateTime": "String (timestamp)"
}
```

