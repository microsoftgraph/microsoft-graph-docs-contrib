---
title: "agentIdentityLifecyclePolicy resource type"
description: "Represents a lifecycle policy that governs the lifecycle of agent identities through compliance rules and enforcement actions."
author: "siaggarwal-ops"
ms.date: 07/31/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# agentIdentityLifecyclePolicy resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a lifecycle policy that governs the lifecycle of agent identities through compliance rules and enforcement actions.

Inherits from [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md).


## Methods
For the list of operations, see the methods of the [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md) base type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time when the policy was created. Inherited from [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md).|
|description|String|The description of the policy. Inherited from [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md).|
|displayName|String|The display name of the policy. Inherited from [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md).|
|enforcementAction|[microsoft.graph.identityGovernance.lifecyclePolicyEnforcementAction](../resources/identitygovernance-lifecyclepolicyenforcementaction.md)|The action taken when an agent identity governed by the policy becomes non-compliant. Inherited from [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md).|
|gracePeriodInDays|Int32|The number of days after an identity becomes non-compliant before the enforcement action is applied. Inherited from [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md).|
|id|String|The unique identifier for the policy. Inherited from [entity](../resources/entity.md).|
|isEnabled|Boolean|Indicates whether the policy is enabled and actively evaluated. Inherited from [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the policy was last modified. Inherited from [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md).|
|notificationSchedule|[microsoft.graph.identityGovernance.lifecyclePolicyNotificationSettings](../resources/identitygovernance-lifecyclepolicynotificationsettings.md)|The notification settings for the policy, including the offsets, in days after non-compliance, at which notifications are sent. Inherited from [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md).|
|policySource|[microsoft.graph.identityGovernance.lifecyclePolicySource](../resources/enums-identitygovernance.md#lifecyclepolicysource-values)|Indicates whether the policy is system-managed (a built-in default) or created by an administrator. Inherited from [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md). The possible values are: `userCreated`, `systemDefault`, `unknownFutureValue`.|
|scope|[subjectSet](../resources/subjectset.md)|The set of agent identities that the policy applies to. Inherited from [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md).|
|versionNumber|Int32|The version number of the policy, which increments each time the policy is updated. Inherited from [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|createdBy|[directoryObject](../resources/directoryobject.md)|The user or service principal that created the policy. Inherited from [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md).|
|lastModifiedBy|[directoryObject](../resources/directoryobject.md)|The user or service principal that last modified the policy. Inherited from [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md).|
|rules|[microsoft.graph.identityGovernance.lifecyclePolicyRule](../resources/identitygovernance-lifecyclepolicyrule.md) collection|The collection of inline compliance rules evaluated for the policy. Rules are combined with AND logic. A maximum of 10 rules are allowed per policy. Inherited from [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md).|
|versions|[microsoft.graph.identityGovernance.lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md) collection|The collection of previous versions of the policy. Inherited from [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md).|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance.agentIdentityLifecyclePolicy",
  "baseType": "microsoft.graph.identityGovernance.lifecyclePolicy",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.agentIdentityLifecyclePolicy",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "enforcementAction": {
    "@odata.type": "microsoft.graph.identityGovernance.lifecyclePolicyEnforcementAction"
  },
  "gracePeriodInDays": "Integer",
  "id": "String (identifier)",
  "isEnabled": "Boolean",
  "lastModifiedDateTime": "String (timestamp)",
  "notificationSchedule": {
    "@odata.type": "microsoft.graph.identityGovernance.lifecyclePolicyNotificationSettings"
  },
  "policySource": "String",
  "scope": {
    "@odata.type": "microsoft.graph.subjectSet"
  },
  "versionNumber": "Integer"
}
```
