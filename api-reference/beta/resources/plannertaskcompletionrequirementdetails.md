---
title: "plannerTaskCompletionRequirementDetails resource type"
description: "Represents detailed information about completionRequirements for a plannerTask."
author: "prasad5596"
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
ms.date: 04/15/2024
---

# plannerTaskCompletionRequirementDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents detailed information about [completionRequirements](plannertask.md#plannertaskcompletionrequirements-values) for a [plannerTask](plannertask.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|approvalRequirement |[plannerApprovalRequirement](plannerapprovalrequirement.md)  |Information about the requirements of an approval.|
|checklistRequirement|[plannerChecklistRequirement](plannerchecklistrequirement.md)|Information about the requirements for completing the checklist.|
|formsRequirement|[plannerFormsRequirement](plannerformsrequirement.md)|Information about the requirements for completing the forms.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!--{
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerTaskCompletionRequirementDetails"
}-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerTaskCompletionRequirementDetails",
  "checklistRequirement": {"@odata.type": "microsoft.graph.plannerChecklistRequirement"},
  "formsRequirement": {"@odata.type": "microsoft.graph.plannerFormsRequirement"},
  "approvalRequirement":  {"@odata.type": "microsoft.graph.plannerApprovalRequirement" }
}
```
