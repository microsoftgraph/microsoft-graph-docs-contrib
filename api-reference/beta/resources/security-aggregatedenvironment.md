---
title: "aggregatedEnvironment resource type"
description: "Represents environment count summaries by type within a zone."
author: "Yarinle4"
ms.date: 11/26/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# aggregatedEnvironment resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents environment count summaries by type within a zone. Aggregations provide a quick overview of how many environments of each type are attached to a zone.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|count|Int32|Number of environments of this type.|
|kind|String|Environment type.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "kind",
  "@odata.type": "microsoft.graph.security.aggregatedEnvironment",
  "openType": "kind"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.aggregatedEnvironment",
  "kind": "String (identifier)",
  "count": "Integer"
}
```

