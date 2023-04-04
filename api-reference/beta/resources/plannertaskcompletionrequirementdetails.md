---
title: "plannerTaskCompletionRequirementDetails resource type"
description: "Represents detailed information about completionRequirements for a plannerTask."
author: "prasad5596"
ms.localizationpriority: medium
ms.prod: "planner"
doc_type: resourcePageType
---

# plannerTaskCompletionRequirementDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents detailed information about [completionRequirements](plannertask.md#plannertaskcompletionrequirements-values) for a [plannerTask](plannertask.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|checklistRequirement|[plannerChecklistRequirement](plannerchecklistrequirement.md)|Information about the requirements for completing the checklist.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!--{
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerTaskCompletionRequirementDetails"
}-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerTaskCompletionRequirementDetails",
  "checklistRequirement": {"@odata.type": "microsoft.graph.plannerChecklistRequirement"}
}
```
