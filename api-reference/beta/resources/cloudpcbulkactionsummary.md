---
title: "cloudPcBulkActionSummary resource type"
description: "Represents a run summary of the bulk actions."
author: "Guoan-Tang"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcBulkActionSummary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a run summary of the bulk actions.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|failedCount|Int32|The number of Cloud PCs where the action failed.|
|inProgressCount|Int32|The number of Cloud PCs where the action is in progress.|
|notSupportedCount|Int32|The number of Cloud PCs where the action isn't supported.|
|pendingCount|Int32|The number of Cloud PCs where the action is pending.|
|successfulCount|Int32|The number of Cloud PCs where the action is successful.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcBulkActionSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcBulkActionSummary",
  "failedCount": "Int32",
  "inProgressCount": "Int32",
  "notSupportedCount": "Int32",
  "pendingCount": "Int32",
  "successfulCount": "Int32"
}
```
