---
title: "userSummary resource type"
description: "Represents a summary of the users processed by a lifecycle workflow with integer totals of successful, unsuccessful, and total workflow runs and tasks."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# userSummary resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a summary of the users processed by a lifecycle workflow with integer totals of successful, unsuccessful, and total workflow runs and tasks.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|failedTasks|Int32|The number of failed tasks for users in a user summary.|
|failedUsers|Int32|The number of failed users in a user summary.|
|successfulUsers|Int32|The number of successful users in a user summary.|
|totalTasks|Int32|The total tasks of users in a user summary.|
|totalUsers|Int32|The total number of users in a user summary|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.userSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.userSummary",
  "failedTasks": "Integer",
  "failedUsers": "Integer",
  "successfulUsers": "Integer",
  "totalTasks": "Integer",
  "totalUsers": "Integer"
}
```
