---
title: "teamsPolicyUserAssignment resource type"
description: "Represents a teamsPolicyAssignment object used to assign or unassign a policy for a specific user."
author: "praspatil05"
ms.date: 12/19/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# teamsPolicyUserAssignment resource type

Namespace: microsoft.graph.teamsAdministration

Represents a [teamsPolicyAssignment](../resources/teamsadministration-teamspolicyassignment.md) object used to assign or unassign a policy for a specific user. It includes the user's ID, the type of policy (for example, `teamsMeetingBroadcastPolicy`), and the targeted policy ID.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Assign](../api/teamsadministration-teamspolicyuserassignment-assign.md)|None|Assign a Teams [policy](../resources/teamsadministration-teamspolicyuserassignment.md) to a user using the user ID, policy type, and policy ID.|
|[Unassign](../api/teamsadministration-teamspolicyuserassignment-unassign.md)|None|Unassign a Teams [policy](../resources/teamsadministration-teamspolicyuserassignment.md) from a user using the user ID and policy type.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|policyId|String|The unique identifier (GUID) of the policy within the specified policy type.|
|policyType|String|The type of Teams policy assigned or unassigned, such as `teamsMeetingBroadcastPolicy`.|
|userId|String|The unique identifier (GUID) of the user.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamsAdministration.teamsPolicyUserAssignment",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsAdministration.teamsPolicyUserAssignment",
  "policyId": "String",
  "policyType": "String",
  "userId": "String"
}
```

