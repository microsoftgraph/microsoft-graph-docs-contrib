---
title: "plannerRelationshipBasedUserType resource type"
description: "Represents a role based on the caller's relationship to the businessScenarioTask that a plannerTaskRoleBasedRule can be applied to."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: "business-scenarios"
doc_type: resourcePageType
---

# plannerRelationshipBasedUserType resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a role based on the caller's relationship to the [businessScenarioTask](../resources/businessscenariotask.md) that a [plannerTaskRoleBasedRule](../resources/plannertaskrolebasedrule.md) can be applied to.

Inherits from [plannerTaskConfigurationRoleBase](../resources/plannertaskconfigurationrolebase.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|role|plannerRelationshipUserRoles|Identifies the relationship of the caller to the task. The possible values are: `defaultRules`, `groupOwners`, `groupMembers`, `taskAssignees`, `applications`, `unknownFutureValue`.|
|roleKind|plannerUserRoleKind|The kind of the rule. The value must be `relationship`. The possible values are: `relationship`, `unknownFutureValue`. Inherited from [plannerTaskConfigurationRoleBase](../resources/plannertaskconfigurationrolebase.md).|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerRelationshipBasedUserType"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerRelationshipBasedUserType",
  "role": "String",
  "roleKind": "String"
}
```
