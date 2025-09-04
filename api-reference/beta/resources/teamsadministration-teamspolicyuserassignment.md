---
title: "teamsPolicyUserAssignment resource type"
description: "Represents a Teams policy assignment object used to either assign or unassign a policy for a specific user."
author: "praspatil05"
ms.date: 08/14/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# teamsPolicyUserAssignment resource type

Namespace: microsoft.graph.teamsAdministration

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Teams policy assignment object used to either assign or unassign a policy for a specific user. It includes the user's ID, the type of policy (such as TeamsMeetingBroadcastPolicy) and the policy ID being targeted.

Inherits from [microsoft.graph.entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[assign](../api/teamsadministration-teamspolicyuserassignment-assign.md)|None|Assigns a Teams policy to a user by specifying the user ID, policy type, and policy ID.|
|[unassign](../api/teamsadministration-teamspolicyuserassignment-unassign.md)|None|Unassigns a Teams policy from a user by specifying the user ID, and policy type.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|policyId|String|The unique identifier (GUID) of the policy within the specified policy type.|
|policyType|String|The type of Teams policy being assigned or unassigned, such as teamsMeetingBroadcastPolicy.|
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
  "userId": "String",
  "policyType": "String",
  "policyId": "String"
}
```

