---
title: "effectivePolicyAssignment resource type"
description: "Represents the effective policies associated with the User."
author: "Prasanna Patil"
ms.date: 03/19/2025
ms.localizationpriority: medium
ms.subservice: "Teams"
doc_type: resourcePageType
---

# effectivePolicyAssignment resource type

Namespace: microsoft.graph.teamsAdministration

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the effective policies associated with the User.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|policyAssignment|[microsoft.graph.teamsAdministration.policyAssignment](../resources/teamsadministration-policyassignment.md)|Represents details about the policy instance. Details includes displayName, assignmentType, policyID and GroupId|
|policyType|String|Represents the type of the assigned policy. For example: TeamsMeetingPolicy, TeamsCallingPolicy, etc.|

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
  "policyType": "String",
  "policyAssignment": {
    "@odata.type": "microsoft.graph.teamsAdministration.policyAssignment"
  }
}
```

