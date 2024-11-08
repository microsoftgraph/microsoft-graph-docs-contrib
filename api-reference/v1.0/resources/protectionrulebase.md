---
title: "protectionRuleBase resource type"
description: "Represents a protection rule specified by the client as part of a protection plan applied to Microsoft 365 data in an organization."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
toc.title: Protection rule
---

# protectionRuleBase resource type

Namespace: microsoft.graph

Represents a protection rule specified by the client as part of a protection plan applied to Microsoft 365 data in an organization. Currently, only inclusion rules, which are rules that indicate that a protection policy should match the specified criteria, can be defined.

Currently, protection Rules are static in nature, meaning policy changes are applied only when the rule is executed, with no automatic/dynamic updates.

This abstract type is the base type for [siteProtectionRule](../resources/siteprotectionrule.md), [mailboxProtectionRule](../resources/mailboxprotectionrule.md), and [driveProtectionRule](../resources/driveprotectionrule.md).

The following limitations apply to this resource:

- The protection rule APIs for bulk addition of sites via site names or URL in the backup policy creation workflow can accommodate a maximum of 10 keywords at a time. Each keyword can have a minimum of three characters and a maximum of 255 characters.
- The protection rule APIs for bulk addition of user accounts via security groups or distribution lists can accommodate a maximum of three groups at a time.
- The rules are static and applied one time only. That is, the security groups or distribution lists are flattened at the time they're added to the backup configuration policy. For example, groups or lists aren't dynamically updated in the system if users are added or removed from the original security group.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the protection rule associated with the policy.|
|createdBy|[identitySet](../resources/identityset.md)|The identity of person who created the rule.|
|createdDateTime|DateTimeOffset|The time of creation of the rule.|
|error|[publicError](../resources/publicerror.md)|Contains error details if an operation on a rule fails.|
|isAutoApplyEnabled|Boolean| `true` indicates that the protection rule is dynamic; `false` that it's static. Currently, only static rules are supported.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The identity of the person who last modified the rule.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of the last modification made to the rule.|
|status|[protectionRuleStatus](../resources/protectionrulebase.md#protectionrulestatus-values )|The status of the protection rule. The possible values are: `draft`, `active`, `completed`, `completedWithErrors`, `unknownFutureValue`. The `draft` member is currently unsupported.|

### protectionRuleStatus values

|Member | Description |
|:------|:------------|
|draft | The initial status of the protection rule upon creation. The `draft` member is currently unsupported. |
|active | The status of the protection rule when it's running.|
|completed | The status of the protection rule when it's successfully applied to the corresponding policy.|
|completedWithErrors | The status of the protection rule when the rule ran but encountered errors.|
|unknownFutureValue | Evolvable enumeration sentinel value. Don't use.    |

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
  "id": "String (identifier)",
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  },
  "isAutoApplyEnabled": "Boolean"
}
```
