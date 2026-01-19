---
title: "aggregatedEnvironment resource type"
description: "Represents grouped environments by type within a specific zone."
author: "Yarinle4"
ms.date: 11/26/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# aggregatedEnvironment resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents grouped [environments](../resources/security-environment.md) by type within a specific [zone](../resources/security-zone.md). These aggregations provide a quick summary of how many environments of each type are attached to a zone.

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
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.aggregatedEnvironment",
  "count": "Int32",
  "kind": "String (identifier)"
}
```

