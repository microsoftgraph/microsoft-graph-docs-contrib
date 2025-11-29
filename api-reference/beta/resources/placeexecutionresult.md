---
title: "placeExecutionResult resource type"
description: "Represents the upsert result of a place."
author: "Dongjing-MSIT"
ms.date: 11/10/2025
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
---

# placeExecutionResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the upsert result of a [place](../resources/place.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|children|[placeExecutionResult](../resources/placeexecutionresult.md) collection|The upsert results of children places of the place.|
|error|[publicError](../resources/publicerror.md)|The error that occurred during the upsert of the place.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|succeededPlace|[place](../resources/place.md)|The created or updated place if the upsert is succeeded.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.placeExecutionResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.placeExecutionResult",
  "children": [{"@odata.type": "microsoft.graph.placeExecutionResult"}],
  "error": {"@odata.type": "microsoft.graph.publicError"}
}
```

