---
title: "userSummary resource type"
description: "properties of the userSummary resource type"
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# userSummary resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A resource type that notes the summary for users processed by a workflow created using Lifecycle Workflows. Gives a list of failed, successful, and total tasks processed for users in numbered form.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|failedTasks|Int32|Numerical count of failed tasks for users processed by a workflow.|
|failedUsers|Int32|Numerical count of failed users processed by a workflow.|
|successfulUsers|Int32|Numerical count of successful users processed by a workflow.|
|totalTasks|Int32|Numerical count of total tasks for users processed by a workflow.|
|totalUsers|Int32|Numerical count of total users processed by a workflow.|

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
