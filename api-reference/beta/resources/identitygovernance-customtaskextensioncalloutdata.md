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

Represents the data send to Azure Logic Apps as part of a [custom extension callout request](../resources/customextensioncalloutrequest.md) when a custom task extension gets used as part of a lifecycle workflow execution.

Inherits from [customExtensionData](../resources/customextensiondata.md).

## Properties

None.

## Relationships
 
|Relationship|Type|Description|
|:---|:---|:---|
|subject|[user](../resources/user.md)|The user that the `workflow` is executed for.|
|task|[task](../resources/identitygovernance-task.md)|The task that references the custom extension making this callout.|
|taskProcessingResult|[microsoft.graph.identityGovernance.lifecycleWorkflowProcessingStatus](../resources/identitygovernance-taskprocessingresult.md)|The `taskProcessingResult` tracking the instance information of the executing `task`.|
|workflow|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md)|The `workflow` associated with the task that references the custom extension that will be making the callout.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.customTaskExtensionCalloutData",
  "baseType": "microsoft.graph.customExtensionData"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.customTaskExtensionCalloutData"
}
```
