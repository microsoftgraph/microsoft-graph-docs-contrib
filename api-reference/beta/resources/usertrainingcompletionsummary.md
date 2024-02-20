---
title: "userTrainingCompletionSummary resource type"
description: "**TODO: Add Description**"
author: "ak_graph"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# userTrainingCompletionSummary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|completedUsersCount|Int32|**TODO: Add Description**|
|inProgressUsersCount|Int32|**TODO: Add Description**|
|notCompletedUsersCount|Int32|**TODO: Add Description**|
|notStartedUsersCount|Int32|**TODO: Add Description**|
|previouslyAssignedUsersCount|Int32|**TODO: Add Description**|

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

