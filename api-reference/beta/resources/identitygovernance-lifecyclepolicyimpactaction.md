---
title: "lifecyclePolicyImpactAction resource type"
description: "Describes a lifecycle policy action taken for a subject during an impact evaluation. Returned in the **actionsTaken** property of a [lifecyclePolicyImpactSummary](../resources/identitygovernance-lifecyclepolicyimpactsummary.md)."
author: "faithwins"
ms.date: 09/25/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# lifecyclePolicyImpactAction resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes a lifecycle policy action taken for a subject during an impact evaluation. Returned in the **actionsTaken** property of a [lifecyclePolicyImpactSummary](../resources/identitygovernance-lifecyclepolicyimpactsummary.md).

## Methods

None.

## Properties

| Property | Type | Description |
|:---|:---|:---|
| actionType | [microsoft.graph.identityGovernance.lifecyclePolicyImpactActionType](../resources/enums-identitygovernance.md#lifecyclepolicyimpactactiontype-values) | The type of action taken for the subject. The possible values are: `objectCoveredByPolicy`, `attestationNeededWarning`, `attestationNeededNotificationSent`, `disabledDueToAttestationNonCompliance`, `deletedDueToAttestationNonCompliance`, `unknownFutureValue`. |
| dateTime | DateTimeOffset | The date and time when the action occurred. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.lifecyclePolicyImpactAction"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.identityGovernance.lifecyclePolicyImpactAction",
  "actionType": "String",
  "dateTime": "String (timestamp)"
}
```
