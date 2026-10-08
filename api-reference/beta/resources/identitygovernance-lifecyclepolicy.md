---
title: "lifecyclePolicy resource type"
description: "Represents an abstract base policy that governs the lifecycle of identities through compliance rules and enforcement actions."
author: "siaggarwal-ops"
ms.date: 07/31/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# lifecyclePolicy resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the abstract base type for lifecycle policies that govern identities by evaluating compliance rules and applying enforcement actions when an identity becomes non-compliant. A maximum of 10 policies are allowed per subject type per tenant.

You can't create instances of this abstract type directly. Instead, use the following derived type:

- [agentIdentityLifecyclePolicy](../resources/identitygovernance-agentidentitylifecyclepolicy.md)

Instances are differentiated by the **@odata.type** property.

Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get lifecyclePolicy](../api/identitygovernance-lifecyclepolicy-get.md)|[microsoft.graph.identityGovernance.lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md)|Read the properties and relationships of [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md) object.|
|[Update lifecyclePolicy](../api/identitygovernance-lifecyclepolicy-update.md)|[microsoft.graph.identityGovernance.lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md)|Update the properties of a lifecyclePolicy object.|
|[Delete lifecyclePolicy](../api/identitygovernance-lifecyclepolicy-delete.md)|None|Delete a lifecyclePolicy object.|
|[lifecyclePolicy: restore](../api/identitygovernance-lifecyclepolicy-restore.md)|[microsoft.graph.identityGovernance.lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md)|Restore a soft-deleted lifecyclePolicy object.|
|[List rules](../api/identitygovernance-lifecyclepolicy-list-rules.md)|[microsoft.graph.identityGovernance.lifecyclePolicyRule](../resources/identitygovernance-lifecyclepolicyrule.md) collection|Get the compliance rules defined on the policy.|
|[Evaluate impact](../api/identitygovernance-lifecyclepolicy-impact.md)|[lifecyclePolicyImpactSummary](../resources/identitygovernance-lifecyclepolicyimpactsummary.md) collection|Evaluate the impact of the policy during a specified period.|
|[Get report](../api/identitygovernance-lifecyclepolicy-list-report.md)|[lifecyclePolicyReport](../resources/identitygovernance-lifecyclepolicyreport.md)|Read the latest processing report for the policy.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time when the policy was created.|
|description|String|The description of the policy.|
|displayName|String|The display name of the policy.|
|enforcementAction|[microsoft.graph.identityGovernance.lifecyclePolicyEnforcementAction](../resources/identitygovernance-lifecyclepolicyenforcementaction.md)|The action taken when an identity governed by the policy becomes non-compliant. This is a polymorphic type; the possible types are [deleteOnlyEnforcementAction](../resources/identitygovernance-deleteonlyenforcementaction.md), [disableOnlyEnforcementAction](../resources/identitygovernance-disableonlyenforcementaction.md), and [disableThenDeleteEnforcementAction](../resources/identitygovernance-disablethendeleteenforcementaction.md).|
|gracePeriodInDays|Int32|The number of days after an identity becomes non-compliant before the enforcement action is applied.|
|id|String|The unique identifier for the policy. Inherited from [entity](../resources/entity.md).|
|isEnabled|Boolean|Indicates whether the policy is enabled and actively evaluated.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the policy was last modified.|
|notificationSchedule|[microsoft.graph.identityGovernance.lifecyclePolicyNotificationSettings](../resources/identitygovernance-lifecyclepolicynotificationsettings.md)|The notification settings for the policy, including the offsets, in days after non-compliance, at which notifications are sent.|
|policySource|[microsoft.graph.identityGovernance.lifecyclePolicySource](../resources/enums-identitygovernance.md#lifecyclepolicysource-values)|Indicates whether the policy is system-managed (a built-in default) or created by an administrator. The possible values are: `userCreated`, `systemDefault`, `unknownFutureValue`.|
|scope|[subjectSet](../resources/subjectset.md)|The set of subjects that the policy applies to. For example, use an [allExcludingGroupsSubjectSet](../resources/identitygovernance-allexcludinggroupssubjectset.md) to exclude specific groups from evaluation.|
|versionNumber|Int32|The version number of the policy, which increments each time the policy is updated.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|createdBy|[directoryObject](../resources/directoryobject.md)|The user or service principal that created the policy.|
|lastModifiedBy|[directoryObject](../resources/directoryobject.md)|The user or service principal that last modified the policy.|
|report|[microsoft.graph.identityGovernance.lifecyclePolicyReport](../resources/identitygovernance-lifecyclepolicyreport.md)|The latest processing report for the policy.|
|rules|[microsoft.graph.identityGovernance.lifecyclePolicyRule](../resources/identitygovernance-lifecyclepolicyrule.md) collection|The collection of inline compliance rules evaluated for the policy. Rules are combined with AND logic. A maximum of 10 rules are allowed per policy.|
|versions|[microsoft.graph.identityGovernance.lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md) collection|The collection of previous versions of the policy.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance.lifecyclePolicy",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.lifecyclePolicy",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "isEnabled": "Boolean",
  "lastModifiedDateTime": "String (timestamp)",
  "scope": {
    "@odata.type": "microsoft.graph.subjectSet"
  },
  "versionNumber": "Integer",
  "policySource": "String",
  "gracePeriodInDays": "Integer",
  "enforcementAction": {
    "@odata.type": "microsoft.graph.identityGovernance.lifecyclePolicyEnforcementAction"
  },
  "notificationSchedule": {
    "@odata.type": "microsoft.graph.identityGovernance.lifecyclePolicyNotificationSettings"
  }
}
```
