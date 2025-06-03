---
title: "validityDate resource type"
description: "Represents the validity dates for a certificate."
author: "sisharm"
ms.date: 05/23/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# validityDate resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

"Represents the validity dates for a certificate."


## Properties
|Property|Type|Description|
|:---|:---|:---|
|endDateTime|DateTimeOffset| Date & time when certificate validity expires.|
|startDateTime|DateTimeOffset|Date & time when certificate validity begins.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.validityDate"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.validityDate",
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)"
}
```

