---
title: "plannerTaskCompletionRequirementDetails resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# plannerTaskCompletionRequirementDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|approvalRequirement|[plannerApprovalRequirement](../resources/plannerapprovalrequirement.md)|**TODO: Add Description**|
|checklistRequirement|[plannerChecklistRequirement](../resources/plannerchecklistrequirement.md)|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerTaskCompletionRequirementDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerTaskCompletionRequirementDetails",
  "checklistRequirement": {
    "@odata.type": "microsoft.graph.plannerChecklistRequirement"
  },
  "approvalRequirement": {
    "@odata.type": "microsoft.graph.plannerApprovalRequirement"
  }
}
```

