---
title: "riskAnalysisViolation resource type"
description: "Represents a violation reported by a risk analysis provider."
author: "v-kumapanka-microsoft"
ms.date: 11/05/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# riskAnalysisViolation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a violation reported by a risk analysis provider.

The **violations** property of a [riskAnalysisResult](../resources/riskanalysisresult.md) contains objects of this type. These read-only findings currently describe separation of duties (SoD) conflicts reported by SAP Access Control.

## Methods

None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|The provider's description of the violation. Read-only. Nullable.|
|level|String|The severity reported by the provider, for example, `Medium` or `High`. This property is a provider-defined string, not an enumeration with a fixed set of values. Read-only. Nullable.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.riskAnalysisViolation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.riskAnalysisViolation",
  "description": "String",
  "level": "String"
}
```
