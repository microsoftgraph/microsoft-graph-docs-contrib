---
title: "incidentSeverityCounts resource type"
description: "Contains counts of incidents or alerts grouped by severity."
author: "alfeldsh"
ms.date: 05/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# incidentSeverityCounts resource type

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains counts of alerts grouped by severity for [alertCounts](../resources/security-casemanagement-alertcounts.md). Returned in the **bySeverity** property.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|high|Int32|The number of alerts with high severity.|
|informational|Int32|The number of alerts with informational severity.|
|low|Int32|The number of alerts with low severity.|
|medium|Int32|The number of alerts with medium severity.|
|unknown|Int32|The number of alerts with unknown severity.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.caseManagement.incidentSeverityCounts"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseManagement.incidentSeverityCounts",
  "unknown": "Integer",
  "informational": "Integer",
  "low": "Integer",
  "medium": "Integer",
  "high": "Integer"
}
```
