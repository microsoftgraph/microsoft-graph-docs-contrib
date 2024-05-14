---
title: "driveProtectionRule resource type"
description: "Describes drive protection rule and its properties"
author: "tkanaujia, maniksingh"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# driveProtectionRule resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes drive Protection Rule and its properties. It is associated to the OneDrive for Business Protection Policy.

Inherits from [protectionRuleBase](../resources/protectionrulebase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List driveProtectionRule](../api/onedriveforbusinessprotectionpolicy-list-driveinclusionrules.md)|[driveProtectionRule](../resources/driveprotectionrule.md) collection|Get a list of the [driveProtectionRule](../resources/driveprotectionrule.md) and their properties.|
|[Create driveProtectionRule](../api/onedriveforbusinessprotectionpolicy-create-driveinclusionrules.md)|[driveProtectionRule](../resources/driveprotectionrule.md)|Create a new [driveProtectionRule](../resources/driveprotectionrule.md).|
|[Get driveProtectionRule](../api/onedriveforbusinessprotectionpolicy-get-driveinclusionrules.md)|[driveProtectionRule](../resources/driveprotectionrule.md)|Read the properties and relationships of a [driveProtectionRule](../resources/driveprotectionrule.md).|
|[Delete driveProtectionRule](../api/onedriveforbusinessprotectionpolicy-delete-driveinclusionrules.md)|None|Delete a [driveProtectionRule](../resources/driveprotectionrule.md).|
|[run](../api/driveprotectionrule-run.md)|[protectionRuleBase](../resources/protectionrulebase.md)|Upon running the protection rule using the /run API, the status of protectionRuleBase transitions to active|
<!-- |[Update driveProtectionRule](../api/driveprotectionrule-update.md)|[driveProtectionRule](../resources/driveprotectionrule.md)|Update the properties of a [driveProtectionRule](../resources/driveprotectionrule.md) object.| -->

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the protection rule associated with the policy.|
|createdBy|[identitySet](../resources/identityset.md)entitySet|The identity of the person who created the rule.|
|createdDateTime|DateTimeOffset|The date and time that the rule was created.|
|driveExpression|String|Contains drive expression.[driveExpression example](../resources/driveprotectionrule.md#driveExpression-examples)|
|error|[publicError](../resources/publicerror.md)|Error details will be populated here, if any operation on rule expression fails|
|isAutoApplyEnabled|Boolean|A boolean flag indicating whether the protection rule is static or dynamic. Static rules gets executed one time whereas dynamic rule listens to all changes in the system and updates the protection unit list.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity of the person who last modified this rule.|
|lastModifiedDateTime|DateTimeOffset|The timestamp of the last modification to this rule.|
|status|[protectionRuleStatus](../resources/protectionrulebase.md#protectionrulestatus-values )|The status of the protection rule. The following are the possible values: `draft`, `active`, `completed`, `completedWithErrors`, `unknownFutureValue`.|

 ## driveExpression examples
The drive expression can be of following formats.
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
  "@odata.type": "microsoft.graph.driveProtectionRule",
  "baseType": "microsoft.backupRestore.protectionRuleBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.driveProtectionRule",
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
  "driveExpression": "String"
}
```

