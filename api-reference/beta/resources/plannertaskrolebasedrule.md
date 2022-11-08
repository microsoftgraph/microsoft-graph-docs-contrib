---
title: "plannerTaskRoleBasedRule resource type"
description: "**TODO: Add Description**"
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# plannerTaskRoleBasedRule resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the rules for editing [tasks](../resources/businessscenariotask.md) created for the [scenario](../resources/businessscenario.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|defaultRule|String|Default rule that applies when property or action specific rule is not provided. Possible values are: `Allow`, `Block`|
|propertyRule|[plannerTaskPropertyRule](../resources/plannertaskpropertyrule.md)|Rules for specific properties and actions.|
|role|[plannerTaskConfigurationRoleBase](../resources/plannertaskconfigurationrolebase.md)|The role these rules apply to.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerTaskRoleBasedRule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerTaskRoleBasedRule",
  "role": {
    "@odata.type": "microsoft.graph.plannerTaskConfigurationRoleBase"
  },
  "defaultRule": "String",
  "propertyRule": {
    "@odata.type": "microsoft.graph.plannerTaskPropertyRule"
  }
}
```

