---
title: "plannerTaskRoleBasedRule resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# plannerTaskRoleBasedRule resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|defaultRule|String|**TODO: Add Description**|
|propertyRule|[plannerTaskPropertyRule](../resources/plannertaskpropertyrule.md)|**TODO: Add Description**|
|role|[plannerTaskConfigurationRoleBase](../resources/plannertaskconfigurationrolebase.md)|**TODO: Add Description**|

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

