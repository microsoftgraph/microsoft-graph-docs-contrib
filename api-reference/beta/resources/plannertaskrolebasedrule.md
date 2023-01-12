---
title: "plannerTaskRoleBasedRule resource type"
description: "Represents the rules for editing tasks created for a scenario."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: "business-scenarios"
doc_type: resourcePageType
---

# plannerTaskRoleBasedRule resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the rules for editing [tasks](../resources/businessscenariotask.md) created for a [scenario](../resources/businessscenario.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|defaultRule|String|Default rule that applies when a property or action-specific rule is not provided. Possible values are: `Allow`, `Block`|
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
  "defaultRule": "String",
  "propertyRule": {"@odata.type": "microsoft.graph.plannerTaskPropertyRule"},
  "role": {"@odata.type": "microsoft.graph.plannerTaskConfigurationRoleBase"}
}
```
