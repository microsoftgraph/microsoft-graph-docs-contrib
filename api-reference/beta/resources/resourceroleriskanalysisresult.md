---
title: "resourceRoleRiskAnalysisResult resource type"
description: "Represents risk analysis results for a resource role in an access package assignment request."
author: "v-kumapanka-microsoft"
ms.date: 11/05/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# resourceRoleRiskAnalysisResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents risk analysis results for a resource role in an access package assignment request.

The **resourceRoleRiskAnalysisResults** property of an [accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) contains objects of this type. The results are read-only and currently describe separation of duties (SoD) analysis provided by SAP Access Control.

Result inclusion depends on tenant feature enablement and the caller's relationship to the request and the read operation. An empty or unavailable collection alone doesn't establish that no conflicts exist. See [filterByCurrentUser](../api/accesspackageassignmentrequest-filterbycurrentuser.md) for the supported caller-specific views.

## Methods

None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|riskAnalysisResults|[riskAnalysisResult](../resources/riskanalysisresult.md) collection|Risk analysis results associated with the resource role. Read-only. Not nullable.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|resourceRole|[accessPackageResourceRole](../resources/accesspackageresourcerole.md)|The resource role evaluated for this request. Read-only. Nullable. Use `$expand=resourceRoleRiskAnalysisResults/resourceRole` on an eligible assignment-request read to retrieve the role. Expansion doesn't bypass result-inclusion rules.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.resourceRoleRiskAnalysisResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.resourceRoleRiskAnalysisResult",
  "riskAnalysisResults": [
    {
      "@odata.type": "microsoft.graph.riskAnalysisResult"
    }
  ]
}
```
