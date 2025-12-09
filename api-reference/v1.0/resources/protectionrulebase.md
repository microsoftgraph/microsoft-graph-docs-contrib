---
title: "protectionRuleBase resource type"
description: "Represents a protection rule specified by the client as part of a protection plan applied to Microsoft 365 data in an organization."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
toc.title: Protection rule
ms.date: 10/24/2024
---

# protectionRuleBase resource type

Namespace: microsoft.graph

Represents a protection rule specified by the client as part of a protection plan applied to Microsoft 365 data in an organization. Currently, only inclusion rules, which are rules that indicate that a protection policy should match the specified criteria, can be defined.

- Protection rules can be static or dynamic. If the **isAutoApplyEnabled** property is `true`, the protection rule is dynamic; otherwise, it's static.
- Static rule changes are applied once when it's created with no automatic or dynamic updates.
- Dynamic rule is reevaluated at regular intervals to fetch the latest scope of the rule, which results in the addition or removal of artifacts based on the latest rule evaluation.
- This property can only be set when a **protectionRuleBase** object is created. Therefore, a dynamic rule can't be changed to a static rule, nor vice versa.

This abstract type is the base type for [siteProtectionRule](../resources/siteprotectionrule.md), [mailboxProtectionRule](../resources/mailboxprotectionrule.md), and [driveProtectionRule](../resources/driveprotectionrule.md).

The following limitations apply to this resource:

- The protection rule APIs for adding multiple sites by site names or URL in the backup policy creation workflow can handle a maximum of 10 keywords at a time. Each keyword can have a minimum of three characters and a maximum of 255 characters.
- The protection rule APIs for bulk addition of user accounts via security groups or distribution lists can accommodate a maximum of three groups at a time.
- The static rules are applied only once, during which time the security groups or distribution lists are flattened when added to the backup configuration policy. For example, groups or lists aren't dynamically updated in the system if users are added or removed from the original security group.
- The dynamic rules are refreshed at regular intervals, automatically adding and removing artifacts from the configuration policy depending on the result of the rule evaluation.
- A protection policy can have only one active dynamic rule.
- Dynamic rules aren't available for SharePoint protection policies.
- The dynamic rule expression supports a maximum of 100 group IDs in an expression.
- Currently, a maximum of 6,000 users can be protected via a dynamic rule.
- An expression with nested distribution list or security group isn't supported.
- Multi-geo isn't available for dynamic rules.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|The identity of person who created the rule.|
|createdDateTime|DateTimeOffset|The time of creation of the rule.|
|error|[publicError](../resources/publicerror.md)|Contains error details if an operation on a rule fails.|
|id|String|The unique identifier of the protection rule associated with the policy.|
|isAutoApplyEnabled|Boolean| `true` indicates that the protection rule is dynamic; `false` that it's static.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The identity of the person who last modified the rule.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of the last modification made to the rule.|
|status|[protectionRuleStatus](../resources/protectionrulebase.md#protectionrulestatus-values)|The status of the protection rule. The possible values are: `draft`, `active`, `completed`, `completedWithErrors`, `unknownFutureValue`, `updateRequested`, `deleteRequested`. Use the `Prefer: include-unknown-enum-members` request header to get the following values in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `updateRequested` , `deleteRequested`. The `draft` member is currently unsupported.|

### protectionRuleStatus values

|Member | Description |
|:------|:------------|
|draft | The initial status of the protection rule upon creation. The `draft` member is currently unsupported. |
|active | The status of the protection rule when it's running.|
|completed | The status of the protection rule when it's successfully applied to the corresponding policy.|
|completedWithErrors | The status of the protection rule when the rule ran but encountered errors.|
|unknownFutureValue | Evolvable enumeration sentinel value. Don't use.    |
|updateRequested | The status of the protection rule when a patch is requested. This value applies only to dynamic rules.|
|deleteRequested | The status of the protection rule when the [deleteAndUnprotect](../api/protectionrulebase-deleteandunprotect.md) action is performed. This value applies only to dynamic rules.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.protectionRuleBase",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.protectionRuleBase",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "error": {"@odata.type": "microsoft.graph.publicError"},
  "id": "String (identifier)",
  "isAutoApplyEnabled": "Boolean",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "status": "String"
}
```
