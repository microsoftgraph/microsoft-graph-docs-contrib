---
title: "mailboxProtectionRule resource type"
description: "Describes mailbox protection rule and its properties"
author: "tushar20, manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# mailboxProtectionRule resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes Mailbox Protection Rule and its properties. It is associated to the exchange Mailbox Protection Policy.

Inherits from [protectionRuleBase](../resources/protectionrulebase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List mailboxProtectionRule](../api/exchangeprotectionpolicy-list-mailboxinclusionrules.md)|[mailboxProtectionRule](../resources/mailboxprotectionrule.md) collection|Get a list of the [mailboxProtectionRule](../resources/mailboxprotectionrule.md) and their properties.|
|[Create mailboxProtectionRule](../api/exchangeprotectionpolicy-create-mailboxinclusionrules.md)|[mailboxProtectionRule](../resources/mailboxprotectionrule.md)|Create a new [mailboxProtectionRule](../resources/mailboxprotectionrule.md).|
|[Get mailboxProtectionRule](../api/exchangeprotectionpolicy-get-mailboxinclusionrules.md)|[mailboxProtectionRule](../resources/mailboxprotectionrule.md)|Read the properties and relationships of a [mailboxProtectionRule](../resources/mailboxprotectionrule.md).|
|[Delete mailboxProtectionRule](../api/exchangeprotectionpolicy-delete-mailboxinclusionrules.md)|None|Delete a [mailboxProtectionRule](../resources/mailboxprotectionrule.md).|
|[run](../api/exchangeprotectionpolicy-run-mailboxinclusionrules.md)|[protectionRuleBase](../resources/protectionrulebase.md)|Upon running the protection rule using the /run API, the status of protectionRuleBase transitions to active|
<!-- |[Update mailboxProtectionRule](../api/mailboxprotectionrule-update.md)|[mailboxProtectionRule](../resources/mailboxprotectionrule.md)|Update the properties of a [mailboxProtectionRule](../resources/mailboxprotectionrule.md).| -->

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the protection rule associated with the policy.|
|createdBy|[identitySet](../resources/identityset.md)|The identity of the person who created the rule.|
|createdDateTime|DateTimeOffset|The date and time that the rule was created.|
|error|[publicError](../resources/publicerror.md)|Error details will be populated here, if any operation on rule expression fails|
|isAutoApplyEnabled|Boolean|A boolean flag indicating whether the protection rule is static or dynamic. Static rules gets executed one time whereas dynamic rule listens to all changes in the system and updates the protection unit list.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity of the person who last modified this rule.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of last modification of this rule .|
|mailboxExpression|String|Contains mailbox expression.[mailboxExpression example](../resources/mailboxprotectionrule.md#mailboxexpression-examples)|
|status|[protectionRuleStatus](../resources/mailboxprotectionrule.md#protectionrulestatus-values )|Status of the protection rule. It determines the execution status of the rule..The possible values are: `draft`, `active`, `completed`, `completedWithErrors`, `unknownFutureValue`.|

### mailboxExpression examples
The mailbox expression can be of following formats.
| Property                                 | Operator                                   | Example                                                                  |
| ------------------------------------------- | -------------------------------------- | -------------------------------------------------------------------------------------------- |
| `memberOf`      | `-any` |  `(memberOf -any (group.id -in ['d7f5150a-0c6f-4894-a6a1-6df77b26f375']))`         |
| `group.id` | `-in` |   `(memberOf -any (group.id -in ['d7f5150a-0c6f-4894-a6a1-6df77b26f375', '363cdbd0-f091-4644-93e4-64c1020c94d8']))`              |  

### protectionRuleStatus values
|Member | Description |
|:------|:------------|
|draft | The initial status of protection rule upon creation is draft.|
|active | Upon running the protection rule using the /run API, the status of protection rule transitions to active. The state transition is draft to active.|
|completed |Once the protection rule is successfully applied to the corresponding policy, the status of protection rule will be completed. The state transition is active to completed.|
|completedWithErrors | In case of any failures while applying the protection rule to the corresponding policy, the status of protectionRuleBase will be completedWithErrors. The state transition is active to completedWithErrors.|
|unknownFutureValue | Marker value for future compatibility.|


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

