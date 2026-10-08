---
title: "alertStatusCounts resource type"
description: "Contains counts of alerts grouped by status."
author: "alfeldsh"
ms.date: 05/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# alertStatusCounts resource type

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains counts of alerts grouped by status for [alertCounts](../resources/security-casemanagement-alertcounts.md). Returned in the **byStatus** property.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|inProgress|Int32|The number of alerts that are in progress.|
|new|Int32|The number of new alerts.|
|resolved|Int32|The number of resolved alerts.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.caseManagement.alertStatusCounts"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseManagement.alertStatusCounts",
  "new": "Integer",
  "inProgress": "Integer",
  "resolved": "Integer"
}
```
