---
title: "monitoringRule resource type"
description: "Rule defining a signal and threshold to monitor, and the action to perform when met."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: resourcePageType
---

# monitoringRule resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Rule defining a signal and threshold to monitor, and the action to perform when met.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|microsoft.graph.windowsUpdates.monitoringAction|The action triggered when the threshold for the given signal is met. Possible values are: `alertError`, `pauseDeployment`, `offerFallback`, `unknownFutureValue`. Note: `offerFallback` action is only supported on feature update deployments of Windows 11 and must be paired with `ineligible` signal. The fallback version offered is Windows 10, ver. 22H2.|
|signal|microsoft.graph.windowsUpdates.monitoringSignal|The signal to monitor. Possible values are: `rollback`, `ineligble`, `unknownFutureValue`. Note: `ineligible` is only supported on feature update deployments of Windows 11 and must be paired with `offerFallback` signal.|
|threshold|Int32|The threshold for a signal at which to trigger action. An integer from 1 to 100 (inclusive). Note: This value is ignored when signal is `ineligible` and action is `offerFallback`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.monitoringRule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.monitoringRule",
  "signal": "String",
  "threshold": "Integer",
  "action": "String"
}
```

