---
title: "alertCounts resource type"
description: "Contains alert count summaries for an incident case."
author: "alfeldsh"
ms.date: 05/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# alertCounts resource type

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains alert count summaries for an [incidentCase](../resources/security-casemanagement-incidentcase.md). Returned in the **alertCounts** property.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|active|Int32|The number of active alerts.|
|bySeverity|[microsoft.graph.security.caseManagement.incidentSeverityCounts](../resources/security-casemanagement-incidentseveritycounts.md)|The alert counts grouped by incident severity.|
|byStatus|[microsoft.graph.security.caseManagement.alertStatusCounts](../resources/security-casemanagement-alertstatuscounts.md)|The alert counts grouped by alert status.|
|total|Int32|The total number of alerts.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.caseManagement.alertCounts"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseManagement.alertCounts",
  "total": "Integer",
  "active": "Integer",
  "bySeverity": {
    "@odata.type": "#microsoft.graph.security.caseManagement.incidentSeverityCounts"
  },
  "byStatus": {
    "@odata.type": "#microsoft.graph.security.caseManagement.alertStatusCounts"
  }
}
```
