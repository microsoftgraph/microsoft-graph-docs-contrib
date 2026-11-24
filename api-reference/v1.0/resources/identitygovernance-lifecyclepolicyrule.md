---
title: "lifecyclePolicyRule resource type"
description: "Represents an abstract base compliance rule evaluated as part of a lifecycle policy."
author: "siaggarwal-ops"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# lifecyclePolicyRule resource type

Namespace: microsoft.graph.identityGovernance

Represents an abstract base compliance rule that's evaluated as part of a [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md). Each enabled rule is evaluated independently, and any violation makes the policy noncompliant. A maximum of 10 rules are allowed per policy.

Updating individual rules directly isn't supported.

You can't create instances of this abstract type directly. Instead, use one of the following derived types:

- [periodicAttestationRule](../resources/identitygovernance-periodicattestationrule.md)
- [sponsorPresenceRule](../resources/identitygovernance-sponsorpresencerule.md)
- [inactivityRule](../resources/identitygovernance-inactivityrule.md)
- [accessPackageAssignmentRequiredRule](../resources/identitygovernance-accesspackageassignmentrequiredrule.md)
- [invitationRedemptionRule](../resources/identitygovernance-invitationredemptionrule.md)

Instances are differentiated by the **@odata.type** property. This is an abstract type.

Inherits from [entity](../resources/entity.md).

## Methods

None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|gracePeriodInDays|Int32|The optional grace period, in days, that starts when the rule violation is first detected. The allowed range is 0 through 30. If omitted or set to `null`, the **gracePeriodInDays** value of the containing lifecycle policy applies. A value of `0` means no additional grace period. If multiple rules remain violated, the earliest rule grace-period expiry starts the policy action sequence; the policy-level grace period isn't added again.|
|id|String|The unique identifier for the rule. Inherited from [entity](../resources/entity.md).|
|isEnabled|Boolean|Indicates whether the rule is enabled and evaluated as part of its policy.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance.lifecyclePolicyRule",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.lifecyclePolicyRule",
  "gracePeriodInDays": "Int32",
  "id": "String (identifier)",
  "isEnabled": "Boolean"
}
```
