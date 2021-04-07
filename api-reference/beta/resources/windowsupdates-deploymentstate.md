---
title: "deploymentState resource type"
description: "Describes and controls the current state of a deployment."
author: "Alice-at-Microsoft"
localization_priority: Normal
ms.prod: "w10"
doc_type: resourcePageType
---

# deploymentState resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes and controls the current state of a deployment.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|reasons|[deploymentStateReason](../resources/windowsupdates-deploymentstatereason.md) collection|Specifies the reasons the deployment has its state value. Read-only.|
|requestedValue|requestedDeploymentStateValue|Specifies the requested state of the deployment. Possible values are: `none`, `paused`.|
|value|deploymentStateValue|Specifies the state of the deployment. Read-only. Possible values are: `scheduled`, `offering`, `paused`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.deploymentState"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.deploymentState",
  "value": "String",
  "reasons": [
    {
      "@odata.type": "microsoft.graph.windowsUpdates.deploymentStateReason"
    }
  ],
  "requestedValue": "String",
}
```

