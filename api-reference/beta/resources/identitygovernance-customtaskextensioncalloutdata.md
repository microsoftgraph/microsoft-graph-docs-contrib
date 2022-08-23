---
title: "customTaskExtensionCalloutData resource type"
description: "Custom Task Extension callout data"
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# customTaskExtensionCalloutData resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A resource type that represents the call-out data of the Custom Task Extension.

Inherits from [customExtensionData](../resources/identitygovernance-customTaskExtensionCalloutData.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|subject|[user](../resources/user.md)|The user that the `workflow` is executed for.|
|task|[task](../resources/identitygovernance-task.md)|The task that references the custom extension making this callout.|
|taskProcessingResult|[microsoft.graph.identityGovernance.taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md)|The `taskProcessingResult` tracking the instance information of the executing `task`.|
|workflow|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md)|The `workflow` associated with the task that references the custom extension that will be making the callout.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.customTaskExtensionCalloutData"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.customTaskExtensionCalloutData"
}
```
