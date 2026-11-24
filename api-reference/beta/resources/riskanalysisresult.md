---
title: "riskAnalysisResult resource type"
description: "Represents the findings and external report reference for a risk analysis."
author: "v-kumapanka-microsoft"
ms.date: 11/05/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# riskAnalysisResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the findings and external report reference for a risk analysis.

The **riskAnalysisResults** property of a [resourceRoleRiskAnalysisResult](../resources/resourceroleriskanalysisresult.md) contains objects of this type. These read-only results currently describe separation of duties (SoD) analysis provided by SAP Access Control for an access package assignment request.

Access to an external report requires authorization in the originating system. Microsoft Graph permissions don't grant access to that report.

## Methods

None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|externalReferenceUrl|String|The URL of the risk analysis report in the originating system. Read-only. Nullable.|
|violations|[riskAnalysisViolation](../resources/riskanalysisviolation.md) collection|Violations reported by the risk analysis provider. An empty collection alone doesn't establish that an assignment is free of conflicts. Read-only. Not nullable.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.riskAnalysisResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.riskAnalysisResult",
  "externalReferenceUrl": "String",
  "violations": [
    {
      "@odata.type": "microsoft.graph.riskAnalysisViolation"
    }
  ]
}
```
