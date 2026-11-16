---
title: "lifecyclePolicyScopeProcessingAttempt resource type"
description: "Represents the latest retained scope-processing attempt for a lifecycle policy."
author: "faithwins"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# lifecyclePolicyScopeProcessingAttempt resource type

Namespace: microsoft.graph.identityGovernance

Represents the latest retained scope-processing attempt for a lifecycle policy. Returned in the **latestAttempt** property of [lifecyclePolicyScopeProcessing](../resources/identitygovernance-lifecyclepolicyscopeprocessing.md).

## Methods

None.

## Properties

| Property | Type | Description |
|:---|:---|:---|
| completedDateTime | DateTimeOffset | The date and time when the attempt completed. |
| error | [publicError](../resources/publicerror.md) | The error associated with an unsuccessful attempt. |
| startedDateTime | DateTimeOffset | The date and time when the attempt started. |
| status | microsoft.graph.identityGovernance.lifecyclePolicyScopeProcessingAttemptStatus | The outcome or current state of the attempt. The possible values are: `notStarted`, `evaluating`, `processing`, `completed`, `failed`, `timedOut`, `invalidScope`, `unknownFutureValue`. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.lifecyclePolicyScopeProcessingAttempt"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.identityGovernance.lifecyclePolicyScopeProcessingAttempt",
  "completedDateTime": "String (timestamp)",
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  },
  "startedDateTime": "String (timestamp)",
  "status": "String"
}
```
