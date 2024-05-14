---
title: "monitoringRule resource type"
description: "Rule defining a signal and threshold to monitor, and the action to perform when met."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.subservice: windows-update-business
doc_type: resourcePageType
---

# monitoringRule resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Rule defining a signal and threshold to monitor, and the action to perform when met.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|microsoft.graph.windowsUpdates.monitoringAction|The action triggered when the threshold for the given signal is reached. Possible values are: `alertError`, `pauseDeployment`, `offerFallback`, `unknownFutureValue`. The `offerFallback` member is only supported on feature update deployments of Windows 11 and must be paired with the `ineligible` signal. The fallback version offered is the version 22H2 of Windows 10.|
|signal|microsoft.graph.windowsUpdates.monitoringSignal|The signal to monitor. Possible values are: `rollback`, `ineligible`, `unknownFutureValue`. The `ineligible` member is only supported on feature update deployments of Windows 11 and must be paired with the `offerFallback` action.|
|threshold|Int32|The threshold for a signal at which to trigger the action. An integer from `1` to `100` (inclusive). This value is ignored when the signal is `ineligible` and the action is `offerFallback`.|

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
  "action": "String",
  "signal": "String",
  "threshold": "Int32"
}
```
