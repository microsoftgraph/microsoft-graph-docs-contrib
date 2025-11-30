---
title: "placeOperationProgress resource type"
description: "Represents the progress of an operation"
author: "Dongjing-MSIT"
ms.date: 11/10/2025
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
---

# placeOperationProgress resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the progress of an operation.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|failedPlaceCount|Int32|The count of places failed to upsert.|
|succeededPlaceCount|Int32|The count of places succeeded to upsert.|
|totalPlaceCount|Int32|The total count of places in the request.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.placeOperationProgress"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.placeOperationProgress",
  "failedPlaceCount": "Int32",
  "succeededPlaceCount": "Int32",
  "totalPlaceCount": "Int32"
}
```
