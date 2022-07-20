---
title: "runSummary resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# runSummary resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|failedRuns|Int32|**TODO: Add Description**|
|failedTasks|Int32|**TODO: Add Description**|
|successfulRuns|Int32|**TODO: Add Description**|
|totalRuns|Int32|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.runSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.runSummary",
  "failedRuns": "Integer",
  "failedTasks": "Integer",
  "successfulRuns": "Integer",
  "totalRuns": "Integer"
}
```

