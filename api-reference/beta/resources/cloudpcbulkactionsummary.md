---
title: "cloudPcBulkActionSummary resource type"
description: "Run summary of bulk action"
author: "Guoan-Tang"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcBulkActionSummary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Run summary of bulk action

## Properties
|Property|Type|Description|
|:---|:---|:---|
|failedCount|Int32|Indicates count of cloudPcs where the action is failed|
|inProgressCount|Int32|Indicates count of cloudPcs where the action is in progress|
|notSupportedCount|Int32|Indicates count of cloudPcs where the action is not supported|
|pendingCount|Int32|Indicates count of cloudPcs where the action is pending|
|successfulCount|Int32|Indicates count of cloudPcs where the action is successful|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcBulkActionSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcBulkActionSummary",
  "failedCount": "Integer",
  "inProgressCount": "Integer",
  "notSupportedCount": "Integer",
  "pendingCount": "Integer",
  "successfulCount": "Integer"
}
```

