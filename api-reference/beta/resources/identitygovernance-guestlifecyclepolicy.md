---
title: "guestLifecyclePolicy resource type"
description: "Represents a lifecycle policy that governs guest users in an organization."
author: "faithwins"
ms.date: 09/25/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# guestLifecyclePolicy resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a lifecycle policy that governs guest users in an organization.
Inherits from [microsoft.graph.identityGovernance.lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md).

## Methods

This resource is part of a polymorphic collection managed by the [lifecyclePolicy resource](../resources/identitygovernance-lifecyclepolicy.md) base type. Operations are performed through the base type endpoints.

## Properties

| Property | Type | Description |
|:---|:---|:---|
| createdDateTime | DateTimeOffset | The date and time when the policy was created. Inherited from [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md). |
| description | String | The description of the policy. Inherited from [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md). |
| displayName | String | The display name of the policy. Inherited from [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md). |
| enforcementAction | [microsoft.graph.identityGovernance.lifecyclePolicyEnforcementAction](../resources/identitygovernance-lifecyclepolicyenforcementaction.md) | The action applied when a guest user governed by the policy becomes noncompliant. Inherited from [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md). |
| gracePeriodInDays | Int32 | The number of days before the enforcement action is applied. Inherited from [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md). |
| id | String | The unique identifier for the policy. Inherited from [entity](../resources/entity.md). |
| isEnabled | Boolean | Indicates whether the policy is enabled. Inherited from [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md). |
| lastModifiedDateTime | DateTimeOffset | The date and time when the policy was last modified. Inherited from [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md). |
| notificationSchedule | [microsoft.graph.identityGovernance.lifecyclePolicyNotificationSettings](../resources/identitygovernance-lifecyclepolicynotificationsettings.md) | The notification schedule for noncompliant guest users. Inherited from [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md). |
| policySource | microsoft.graph.identityGovernance.lifecyclePolicySource | Indicates whether the policy is system-managed or user-created. The possible values are: `userCreated`, `systemDefault`, `unknownFutureValue`. Inherited from [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md). |
| scope | [microsoft.graph.subjectSet](../resources/subjectset.md) | The guest users included in the policy. Inherited from [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md). |
| versionNumber | Int32 | The version number of the policy. Inherited from [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md). |

## Relationships

| Relationship | Type | Description |
|:---|:---|:---|
| createdBy | [directoryObject](../resources/directoryobject.md) | The user or service principal that created the policy. Inherited from [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md). |
| lastModifiedBy | [directoryObject](../resources/directoryobject.md) | The user or service principal that last modified the policy. Inherited from [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md). |
| report | [microsoft.graph.identityGovernance.lifecyclePolicyReport](../resources/identitygovernance-lifecyclepolicyreport.md) | The latest processing report for the policy. |
| rules | [microsoft.graph.identityGovernance.lifecyclePolicyRule](../resources/identitygovernance-lifecyclepolicyrule.md) collection | The compliance rules evaluated by the policy. Inherited from [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md). |
| versions | [microsoft.graph.identityGovernance.lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md) collection | The previous versions of the policy. Inherited from [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md). |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance.guestLifecyclePolicy",
  "baseType": "microsoft.graph.identityGovernance.lifecyclePolicy",
  "openType": false
}
-->
```json
{
  "@odata.type": "#microsoft.graph.identityGovernance.guestLifecyclePolicy",
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
