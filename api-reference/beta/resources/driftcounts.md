---
title: "driftCounts resource type"
description: "Represents the aggregate counts of access drift for a governed resource."
author: "suhanigupta"
ms.date: 08/25/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# driftCounts resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the aggregate counts of access drift for a governed resource.

This object is configured in the **driftCounts** property of [accessDriftSummary](../resources/accessdriftsummary.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|missing|Int32|The number of assignments that are expected but not present on the resource.|
|total|Int32|The total number of unauthorized and missing access assignments.|
|unauthorized|Int32|The number of assignments that exist on the resource but are not expected.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.driftCounts"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.driftCounts",
  "total": "Int32",
  "unauthorized": "Int32",
  "missing": "Int32"
}
```
