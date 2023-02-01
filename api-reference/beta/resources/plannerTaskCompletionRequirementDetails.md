---
title: "plannerTaskCompletionRequirementDetails resource type"
description: "This is the structure that stores requirements for the task completion"
author: "prasad5596"
ms.localizationpriority: medium
ms.prod: "planner"
doc_type: resourcePageType
---

# plannerTaskCompletionRequirementDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the detail information about [completionRequirements](plannerTaskCompletionRequirements.md) for the [plannerTask](plannertask.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|checklistRequirement|[plannerChecklistRequirement](plannerChecklistRequirement.md)|Contains information about checklist completion requirement.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

``` json
{
  "@odata.type": "#microsoft.graph.plannerTaskCompletionRequirementDetails",
  "checklistRequirement": {"@odata.type": "microsoft.graph.plannerChecklistRequirement"}
}
```
