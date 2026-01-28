---
title: "deploymentState resource type"
description: "Describes and controls the current state of a deployment."
author: "andredm7"
ms.localizationpriority: medium
ms.subservice: windows-autopatch
doc_type: resourcePageType
ms.date: 01/27/2026
---

# deploymentState resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes and controls the current state of a deployment.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|effectiveValue|microsoft.graph.windowsUpdates.deploymentStateValue|Specifies the state of the deployment. Supports a subset of the values for **deploymentStateValue**. The possible values are: `scheduled`, `offering`, `paused`, `unknownFutureValue`. Read-only.|
|reasons|[microsoft.graph.windowsUpdates.deploymentStateReason](../resources/windowsupdates-deploymentstatereason.md) collection|Specifies the reasons the deployment has its state value. Read-only.|
|requestedValue|microsoft.graph.windowsUpdates.requestedDeploymentStateValue|Specifies the requested state of the deployment. Supports a subset of the values for **requestedDeploymentStateValue**. The possible values are: `none`, `paused`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.deploymentState"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.deploymentState",
  "effectiveValue": "String",
  "reasons": [{"@odata.type": "microsoft.graph.windowsUpdates.deploymentStateReason"}],
  "requestedValue": "String"
}
```
