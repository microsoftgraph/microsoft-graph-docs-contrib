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
|subject|[user](../resources/user.md)|The user which created the workflow.|
|task|[task](../resources/identitygovernance-task.md)|The task associated with the Custom Task Extension.|
|taskProcessingresult|[identitygovernance-taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md)|The task processing result of the Custom Task Extension.|
|workflow|[workflow](../resources/identitygovernance-workflow.md)|The workflow the Custom Task Extension is part of.|

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
