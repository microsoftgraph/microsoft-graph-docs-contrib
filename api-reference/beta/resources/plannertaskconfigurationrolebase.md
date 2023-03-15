---
title: "plannerTaskConfigurationRoleBase resource type"
description: "An abstract type that represents a role that a plannerTaskRoleBasedRule can be applied to."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: "business-scenarios"
doc_type: resourcePageType
---

# plannerTaskConfigurationRoleBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that represents a role that a [plannerTaskRoleBasedRule](../resources/plannertaskrolebasedrule.md) can be applied to.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|roleKind|plannerUserRoleKind|Type of the role. The possible values are: `relationship`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerTaskConfigurationRoleBase"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerTaskConfigurationRoleBase",
  "roleKind": "String"
}
```
