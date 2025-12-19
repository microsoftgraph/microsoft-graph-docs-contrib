---
title: "policyAssignment resource type"
description: "Represents the details of a policy instance, such as displayName and groupId."
author: "praspatil05"
ms.date: 12/03/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# policyAssignment resource type

Namespace: microsoft.graph.teamsAdministration

Represents the details of a policy instance, such as **displayName** and **groupId**.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignmentType|microsoft.graph.teamsAdministration.assignmentType|The type of assignment: `group` for group-based assignment, `direct` for user-based assignment. The possible values are: `direct`, `group`, `unknownFutureValue`.|
|displayName|String|Represents the name of the policy.|
|groupId|String|Represents the group identifier.|
|policyId|String|Represents the unique identifier for the policy. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamsAdministration.policyAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsAdministration.policyAssignment",
  "assignmentType": "String",
  "displayName": "String",
  "groupId": "String",
  "policyId": "String"
}
```

