---
title: "userTrainingCompletionSummary resource type"
description: "Aggregate data of users training progress"
author: "akgraph"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# userTrainingCompletionSummary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Aggregate data of users training progress

## Properties
|Property|Type|Description|
|:---|:---|:---|
|completedUsersCount|Int32|Count of users who complete all the trainings before due date.|
|inProgressUsersCount|Int32|Count of users who start atleast one training.|
|notCompletedUsersCount|Int32|Count of users who didn't complete all the trainings prior to the due date.|
|notStartedUsersCount|Int32|Count of users who didn't start any training.|
|previouslyAssignedUsersCount|Int32|Count of users who are already assigned the same training.|

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

