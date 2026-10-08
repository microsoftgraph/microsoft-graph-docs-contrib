---
title: "lifecyclePolicySubjectEnforcement resource type"
description: "Represents the current enforcement state for a subject and lifecycle policy."
author: "faithwins"
ms.date: 09/25/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# lifecyclePolicySubjectEnforcement resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the current enforcement state for a subject and lifecycle policy. Returned in the **enforcement** property of a [lifecyclePolicySubjectReport](../resources/identitygovernance-lifecyclepolicysubjectreport.md).

## Properties

| Property | Type | Description |
|:---|:---|:---|
| isLocked | Boolean | Indicates whether enforcement is locked. |
| isTerminal | Boolean | Indicates whether enforcement reached a terminal state. |
| lastAction | [microsoft.graph.identityGovernance.lifecyclePolicyEnforcementActionState](../resources/enums-identitygovernance.md#lifecyclepolicyenforcementactionstate-values) | The last completed enforcement action. The possible values are: `none`, `warningStateEnabled`, `nonComplianceNotificationSent`, `firstNotificationSent`, `secondNotificationSent`, `finalNotificationSent`, `disabled`, `deleted`, `complianceRestored`, `unknownFutureValue`. |
| lastActionDateTime | DateTimeOffset | The date and time when the last enforcement action completed. |
| nextAction | [microsoft.graph.identityGovernance.lifecyclePolicyNextEnforcementAction](../resources/enums-identitygovernance.md#lifecyclepolicynextenforcementaction-values) | The next enforcement action. The possible values are: `nonComplianceNotification`, `firstNotification`, `secondNotification`, `finalNotification`, `disable`, `disableNotification`, `delete`, `unknownFutureValue`. |
| nextActionDateTime | DateTimeOffset | The date and time when the next enforcement action is scheduled. |
| status | [microsoft.graph.identityGovernance.lifecyclePolicyEnforcementStatus](../resources/enums-identitygovernance.md#lifecyclepolicyenforcementstatus-values) | The current enforcement status. The possible values are: `notRequired`, `notStarted`, `processing`, `waiting`, `actionDue`, `complete`, `unknown`, `unknownFutureValue`. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.lifecyclePolicySubjectEnforcement"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.identityGovernance.lifecyclePolicySubjectEnforcement",
  "isLocked": "Boolean",
  "isTerminal": "Boolean",
  "lastAction": "String",
  "lastActionDateTime": "String (timestamp)",
  "nextAction": "String",
  "nextActionDateTime": "String (timestamp)",
  "status": "String"
}
```
