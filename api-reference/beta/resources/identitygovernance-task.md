---
title: "task resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# task resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List tasks](../api/identitygovernance-taskprocessingresult-list-task.md)|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md) collection|Get a list of the [task](../resources/identitygovernance-task.md) objects and their properties.|
|[Create task](../api/identitygovernance-taskprocessingresult-post-task.md)|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md)|Create a new [task](../resources/identitygovernance-task.md) object.|
|[Get task](../api/identitygovernance-task-get.md)|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md)|Read the properties and relationships of a [task](../resources/identitygovernance-task.md) object.|
|[Update task](../api/identitygovernance-task-update.md)|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md)|Update the properties of a [task](../resources/identitygovernance-task.md) object.|
|[Delete task](../api/identitygovernance-taskprocessingresult-delete-task.md)|None|Deletes a [task](../resources/identitygovernance-task.md) object.|
|[List taskProcessingResults](../api/identitygovernance-userprocessingresult-list-taskprocessingresults.md)|[microsoft.graph.identityGovernance.taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md) collection|Get the taskProcessingResult resources from the taskProcessingResults navigation property.|
|[Create taskProcessingResult](../api/identitygovernance-task-post-taskprocessingresults.md)|[microsoft.graph.identityGovernance.taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md)|Create a new taskProcessingResult object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|arguments|[microsoft.graph.keyValuePair](../resources/intune-keyvaluepair.md) collection|**TODO: Add Description**|
|category|lifecycleTaskCategory|**TODO: Add Description**.The possible values are: `joiner`, `leaver`, `unknownFutureValue`.|
|continueOnError|Boolean|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|executionSequence|Int32|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|isEnabled|Boolean|**TODO: Add Description**|
|taskDefinitionId|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|taskProcessingResults|[microsoft.graph.identityGovernance.taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance.task",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.task",
  "id": "String (identifier)",
  "arguments": [
    {
      "@odata.type": "microsoft.graph.keyValuePair"
    }
  ],
  "category": "String",
  "continueOnError": "Boolean",
  "description": "String",
  "displayName": "String",
  "executionSequence": "Integer",
  "isEnabled": "Boolean",
  "taskDefinitionId": "String"
}
```

