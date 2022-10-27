---
title: "plannerRelationshipBasedUserType resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# plannerRelationshipBasedUserType resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [plannerTaskConfigurationRoleBase](../resources/plannertaskconfigurationrolebase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|role|plannerRelationshipUserRoles|**TODO: Add Description**.The possible values are: `defaultRules`, `groupOwners`, `groupMembers`, `taskAssignees`, `applications`, `unknownFutureValue`.|
|roleKind|plannerUserRoleKind|**TODO: Add Description** Inherited from [plannerTaskConfigurationRoleBase](../resources/plannertaskconfigurationrolebase.md).The possible values are: `relationship`, `unknownFutureValue`.|

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
  "roleKind": "String",
  "role": "String"
}
```

