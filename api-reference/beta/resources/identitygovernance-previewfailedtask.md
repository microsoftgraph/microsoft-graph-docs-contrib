---
title: "previewFailedTask resource type"
description: "Represents a task that failed during a preview operation."
author: "KristinaSmith"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 02/26/2026
---

# previewFailedTask resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a [task](../resources/identitygovernance-task.md) that failed during a preview operation of a [workflow](../resources/identitygovernance-workflow.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|definitionId|String|The identifier of the task definition of the task that failed during the preview operation of a workflow.|
|failureReason|String|The reason why the task failed in the preview operation of a workflow.|
|name|String|The name of the task that failed within the preview operation of a workflow.|
|taskId|String|The identifier of the task that failed during the preview operation of a workflow.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.previewFailedTask"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.previewFailedTask",
  "definitionId": "String",
  "failureReason": "String",
  "name": "String",
  "taskId": "String"
}
```
