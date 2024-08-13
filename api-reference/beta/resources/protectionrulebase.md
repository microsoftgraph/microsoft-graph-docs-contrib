---
title: "protectionRuleBase resource type"
description: "Describes Protection Rule and its properties "
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
toc.title: Protection rule
---

# protectionRuleBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a protection rule specified by the client as part of a protection plan applied to Microsoft 365 data in an organization. Currently, only inclusion rules, which are rules that indicate that a protection policy should match the specified criteria, can be defined.

Protection rules can be static or dynamic, which means that the rules can run one time or at regular intervals.

This abstract type is the base type for [siteProtectionRule](../resources/siteprotectionrule.md), [mailboxProtectionRule](../resources/mailboxprotectionrule.md), and [driveProtectionRule](../resources/driveprotectionrule.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the protection rule associated with the policy.|
|createdBy|[identitySet](../resources/identityset.md)|The identity of person who created the rule.|
|createdDateTime|DateTimeOffset|The time of creation of the rule.|
|error|[publicError](../resources/publicerror.md)|Contains error details if an operation on a rule fails.|
|isAutoApplyEnabled|Boolean|Indicates whether the protection rule is static or dynamic.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The identity of the person who last modified the rule.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of the last modification made to the rule.|
|status|[protectionRuleStatus](../resources/protectionrulebase.md#protectionrulestatus-values )|The status of the protection rule. The possible values are: `draft`, `active`, `completed`, `completedWithErrors`, `unknownFutureValue`.|

### protectionRuleStatus values

|Member | Description |
|:------|:------------|
|draft | The initial status of the protection rule upon creation.|
|active | The status of the protection rule when it's running.|
|completed | The status of the protection rule when it's successfully applied to the corresponding policy.|
|completedWithErrors | The status of the protection rule when the rule ran but encountered errors.|
|unknownFutureValue | Evolvable enumeration sentinel value. Do not use.    |

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
