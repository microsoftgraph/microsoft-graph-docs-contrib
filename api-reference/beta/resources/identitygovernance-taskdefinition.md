---
title: "taskDefinition resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# taskDefinition resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List taskDefinitions](../api/identitygovernance-lifecycleworkflowscontainer-list-taskdefinitions.md)|[microsoft.graph.identityGovernance.taskDefinition](../resources/identitygovernance-taskdefinition.md) collection|Get a list of the [taskDefinition](../resources/identitygovernance-taskdefinition.md) objects and their properties.|
|[Create taskDefinition](../api/identitygovernance-lifecycleworkflowscontainer-post-taskdefinitions.md)|[microsoft.graph.identityGovernance.taskDefinition](../resources/identitygovernance-taskdefinition.md)|Create a new [taskDefinition](../resources/identitygovernance-taskdefinition.md) object.|
|[Get taskDefinition](../api/identitygovernance-taskdefinition-get.md)|[microsoft.graph.identityGovernance.taskDefinition](../resources/identitygovernance-taskdefinition.md)|Read the properties and relationships of a [taskDefinition](../resources/identitygovernance-taskdefinition.md) object.|
|[Update taskDefinition](../api/identitygovernance-taskdefinition-update.md)|[microsoft.graph.identityGovernance.taskDefinition](../resources/identitygovernance-taskdefinition.md)|Update the properties of a [taskDefinition](../resources/identitygovernance-taskdefinition.md) object.|
|[Delete taskDefinition](../api/identitygovernance-lifecycleworkflowscontainer-delete-taskdefinitions.md)|None|Deletes a [taskDefinition](../resources/identitygovernance-taskdefinition.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|category|lifecycleTaskCategory|**TODO: Add Description**.The possible values are: `joiner`, `leaver`, `unknownFutureValue`.|
|continueOnError|Boolean|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|parameters|[microsoft.graph.identityGovernance.parameter](../resources/identitygovernance-parameter.md) collection|**TODO: Add Description**|
|version|Int32|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance.taskDefinition",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.taskDefinition",
  "id": "String (identifier)",
  "category": "String",
  "continueOnError": "Boolean",
  "description": "String",
  "displayName": "String",
  "parameters": [
    {
      "@odata.type": "microsoft.graph.identityGovernance.parameter"
    }
  ],
  "version": "Integer"
}
```

