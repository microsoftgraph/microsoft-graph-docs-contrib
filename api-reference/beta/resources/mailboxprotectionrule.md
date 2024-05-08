---
title: "mailboxProtectionRule resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# mailboxProtectionRule resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This derived entity contains the site expression and other metadata. It is associated to the exchange mailbox protection policy.

Inherits from [protectionRuleBase](../resources/protectionrulebase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List mailboxProtectionRule objects](../api/exchangeprotectionpolicy-list-mailboxinclusionrules.md)|[mailboxProtectionRule](../resources/mailboxprotectionrule.md) collection|Get a list of the [mailboxProtectionRule](../resources/mailboxprotectionrule.md) objects and their properties.|
|[Create mailboxProtectionRule](../api/exchangeprotectionpolicy-post-mailboxinclusionrules.md)|[mailboxProtectionRule](../resources/mailboxprotectionrule.md)|Create a new [mailboxProtectionRule](../resources/mailboxprotectionrule.md) object.|
|[Get mailboxProtectionRule](../api/mailboxprotectionrule-get.md)|[mailboxProtectionRule](../resources/mailboxprotectionrule.md)|Read the properties and relationships of a [mailboxProtectionRule](../resources/mailboxprotectionrule.md) object.|
|[Update mailboxProtectionRule](../api/mailboxprotectionrule-update.md)|[mailboxProtectionRule](../resources/mailboxprotectionrule.md)|Update the properties of a [mailboxProtectionRule](../resources/mailboxprotectionrule.md) object.|
|[Delete mailboxProtectionRule](../api/exchangeprotectionpolicy-delete-mailboxinclusionrules.md)|None|Delete a [mailboxProtectionRule](../resources/mailboxprotectionrule.md) object.|
|[run](../api/protectionrulebase-run.md)|[protectionRuleBase](../resources/protectionrulebase.md)|Upon running the protection rule using the /run API, the status of protectionRuleBase transitions to active|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the protection rule associated to the policy.|
|createdBy|identitySet|The identity of person who created the rule.|
|createdDateTime|DateTimeOffset|The time of creation of the rule.|
|error|publicError|Error details will be populated here, if any operation on rule expression fails|
|isAutoApplyEnabled|Boolean|A boolean flag indicating whether the protection rule is static or dynamic. Static rules gets executed one time whereas dynamic rule listens to all changes in the system and updates the protection unit list.|
|lastModifiedBy|identitySet|Identity of the person who last modified this rule.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of last modification of this rule .|
|status|[protectionRuleStatus](../resources/protectionrulebase.md#protectionrulestatus-values )|Status of the protection rule. It determines the execution status of the rule..The possible values are: `draft`, `active`, `completed`, `completedWithErrors`, `unknownFutureValue`.|

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
  "baseType": "microsoft.backupRestore.protectionRuleBase",
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

