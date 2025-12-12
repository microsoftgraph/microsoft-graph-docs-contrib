---
title: "effectivePolicyAssignment resource type"
description: "Represents the effective policies associated with a user."
author: "praspatil05"
ms.date: 12/03/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# effectivePolicyAssignment resource type

Namespace: microsoft.graph.teamsAdministration

Represents the effective policies associated with a user.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|policyAssignment|[microsoft.graph.teamsAdministration.policyAssignment](../resources/teamsadministration-policyassignment.md)|Represents details about the policy instance, including **assignmentType**, **displayName**, **groupId**, and **policyID**.|
|policyType|String|The type of the assigned policy; for example, `TeamsMeetingPolicy` and `TeamsCallingPolicy`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamsAdministration.effectivePolicyAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsAdministration.effectivePolicyAssignment",
  "policyAssignment": {"@odata.type": "microsoft.graph.teamsAdministration.policyAssignment"}
  "policyType": "String"
}
```

