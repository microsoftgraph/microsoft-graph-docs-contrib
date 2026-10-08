---
title: "lifecyclePolicyScopeProcessing resource type"
description: "Represents current and latest retained scope-processing information for a lifecycle policy. Returned in the scopeProcessing property of a lifecyclePolicyReport."
author: "faithwins"
ms.date: 09/25/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# lifecyclePolicyScopeProcessing resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents current and latest retained scope-processing information for a lifecycle policy. Returned in the **scopeProcessing** property of a [lifecyclePolicyReport](../resources/identitygovernance-lifecyclepolicyreport.md).

## Properties

| Property | Type | Description |
|:---|:---|:---|
| currentStartedDateTime | DateTimeOffset | The date and time when the current scope-processing operation started. |
| currentStatus | [microsoft.graph.identityGovernance.lifecyclePolicyScopeProcessingStatus](../resources/enums-identitygovernance.md#lifecyclepolicyscopeprocessingstatus-values) | The current scope-processing status. The possible values are: `idle`, `notStarted`, `evaluating`, `processing`, `unknownFutureValue`. |
| lastSuccessfulProcessingDateTime | DateTimeOffset | The date and time when scope processing last completed successfully. |
| latestAttempt | [microsoft.graph.identityGovernance.lifecyclePolicyScopeProcessingAttempt](../resources/identitygovernance-lifecyclepolicyscopeprocessingattempt.md) | The latest retained scope-processing attempt. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.lifecyclePolicyScopeProcessing"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.identityGovernance.lifecyclePolicyScopeProcessing",
  "currentStartedDateTime": "String (timestamp)",
  "currentStatus": "String",
  "lastSuccessfulProcessingDateTime": "String (timestamp)",
  "latestAttempt": {
    "@odata.type": "microsoft.graph.identityGovernance.lifecyclePolicyScopeProcessingAttempt"
  }
}
```
