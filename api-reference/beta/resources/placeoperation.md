---
title: "placeOperation resource type"
description: "Represents a place bulk upsert operation."
author: "Dongjing-MSIT"
ms.date: 11/10/2025
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
---

# placeOperation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a [place](../resources/place.md) bulk upsert operation.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/place-listoperations.md)|[placeOperation](../resources/placeoperation.md) collection|List all existing [placeOperation](../resources/placeoperation.md) objects.|
|[Get](../api/place-getoperation.md)|[placeOperation](../resources/placeoperation.md)|Get a [placeOperation](../resources/placeoperation.md) by ID.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|details|[placeExecutionResult](../resources/placeexecutionresult.md) collection|The detailed result of the operation, including errors and successful places.|
|id|String|The ID of the operation.|
|progress|[placeOperationProgress](../resources/placeoperationprogress.md)|The progress of the operation.|
|status|placeOperationStatus|The status of the operation. The possible values are: `created`, `inProgress`, `succeeded`, `failed`, `partiallySucceeded`, `expired`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.placeOperation",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.placeOperation",
  "details": [{"@odata.type": "microsoft.graph.placeExecutionResult"}],
  "id": "String (identifier)",
  "progress": {"@odata.type": "microsoft.graph.placeOperationProgress"},
  "status": "String"
}
```

