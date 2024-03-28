---
title: "userTrainingCompletionSummary resource type"
description: "Contains aggregate data about userss training progress."
author: "akgraph"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# userTrainingCompletionSummary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains aggregate data about userss training progress.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|completedUsersCount|Int32|The number of users who completed all the trainings before the due date.|
|inProgressUsersCount|Int32|The number of users who started at least one training.|
|notCompletedUsersCount|Int32|The number of users who didn't complete all the trainings before the due date.|
|notStartedUsersCount|Int32|The number of users who didn't start any training.|
|previouslyAssignedUsersCount|Int32|The number of users who are already assigned the same training.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userTrainingCompletionSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userTrainingCompletionSummary",
  "notStartedUsersCount": "Integer",
  "completedUsersCount": "Integer",
  "inProgressUsersCount": "Integer",
  "notCompletedUsersCount": "Integer",
  "previouslyAssignedUsersCount": "Integer"
}
```

