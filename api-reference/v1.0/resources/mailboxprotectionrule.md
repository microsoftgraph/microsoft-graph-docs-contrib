---
title: "mailboxProtectionRule resource type"
description: "Represents the properties of a protection rule associated with an Exchange protection policy."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
ms.date: 10/24/2024
---

# mailboxProtectionRule resource type

Namespace: microsoft.graph

Represents the properties of a protection rule associated with an [Exchange protection policy](../resources/exchangeprotectionpolicy.md).

Inherits from [protectionRuleBase](../resources/protectionrulebase.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/exchangeprotectionpolicy-list-mailboxinclusionrules.md)|[mailboxProtectionRule](../resources/mailboxprotectionrule.md) collection|Get a list of the [mailboxProtectionRule](../resources/mailboxprotectionrule.md) objects and their properties.|
|[Create](../api/protectionrulebase-post.md)|[mailboxProtectionRule](../resources/mailboxprotectionrule.md)|Create a new [mailboxProtectionRule](../resources/mailboxprotectionrule.md).|
|[Get](../api/protectionrulebase-get.md)|[mailboxProtectionRule](../resources/mailboxprotectionrule.md)|Read the properties and relationships of a [mailboxProtectionRule](../resources/mailboxprotectionrule.md).|
|[Update](../api/protectionrulebase-update.md)|[mailboxProtectionRule](../resources/mailboxprotectionrule.md)|Update the properties of a [mailboxProtectionRule](../resources/mailboxprotectionrule.md) object.|
|[Delete](../api/protectionrulebase-delete.md)|None|Delete a [mailboxProtectionRule](../resources/mailboxprotectionrule.md).|
|[Delete and unprotect](../api/protectionrulebase-deleteandunprotect.md)|[mailboxProtectionRule](../resources/mailboxprotectionrule.md)|Delete and unprotect all the artifacts protected by a dynamic rule.|
|[Run](../api/protectionrulebase-run.md)|[protectionRuleBase](../resources/protectionrulebase.md)|Activate a mailbox protection rule.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the protection rule associated with the policy.|
|createdBy|[identitySet](../resources/identityset.md)|The identity of the person who created the rule.|
|createdDateTime|DateTimeOffset|The date and time that the rule was created.|
|error|[publicError](../resources/publicerror.md)|Contains error details if an operation on a rule expression fails.|
|isAutoApplyEnabled|Boolean| `true` indicates that the protection rule is dynamic; `false` that it's static. Static rules run one time while dynamic rules listen to all changes in the system and update the protection unit list. Currently, only static rules are supported.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity of the person who last modified this rule.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of last modification to the rule.|
|mailboxExpression|String|Contains a mailbox expression. For examples, see [mailboxExpression examples](../resources/mailboxprotectionrule.md#mailboxexpression-examples).|
|status|[protectionRuleStatus](../resources/protectionrulebase.md#protectionrulestatus-values)|The status of the protection rule. The possible values are: `draft`, `active`, `completed`, `completedWithErrors`, `unknownFutureValue`, `updateRequested`, `deleteRequested`. Use the `Prefer: include-unknown-enum-members` request header to get the following values in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `updateRequested` , `deleteRequested`. The `draft` member is currently unsupported. Inherited from [protectionRuleBase](../resources/protectionrulebase.md). |

### mailboxExpression examples

The following table shows the possible formats for the mailbox expression.

| Property                                 | Operator                                   | Example                                                                  |
| ------------------------------------------- | -------------------------------------- | -------------------------------------------------------------------------------------------- |
| `memberOf`      | `-any` |  `(memberOf -any (group.id -in ['d7f5150a-0c6f-4894-a6a1-6df77b26f375']))`         |
| `group.id` | `-in` |   `(memberOf -any (group.id -in ['d7f5150a-0c6f-4894-a6a1-6df77b26f375', '363cdbd0-f091-4644-93e4-64c1020c94d8']))`              |  

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mailboxProtectionRule",
  "baseType": "microsoft.graph.protectionRuleBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mailboxProtectionRule",
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
  "isAutoApplyEnabled": "Boolean",
  "mailboxExpression": "String"
}
```
