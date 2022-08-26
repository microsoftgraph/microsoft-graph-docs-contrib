---
title: "userSummary resource type"
description: "**TODO: Add Description**"
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# userSummary resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties

|Property|Type|Description|
|:---|:---|:---|
|failedTasks|Int32|**TODO: Add Description**|
|failedUsers|Int32|**TODO: Add Description**|
|successfulUsers|Int32|**TODO: Add Description**|
|totalTasks|Int32|**TODO: Add Description**|
|totalUsers|Int32|**TODO: Add Description**|

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
