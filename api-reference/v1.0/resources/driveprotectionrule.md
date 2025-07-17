---
title: "driveProtectionRule resource type"
description: "Represents a drive protection rule associated with a OneDrive for Business protection policy."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
ms.date: 09/30/2024
---

# driveProtectionRule resource type

Namespace: microsoft.graph

Represents a protection rule associated with a [OneDrive for Business protection policy](../resources/onedriveforbusinessprotectionpolicy.md).

Inherits from [protectionRuleBase](../resources/protectionrulebase.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/onedriveforbusinessprotectionpolicy-list-driveinclusionrules.md)|[driveProtectionRule](../resources/driveprotectionrule.md) collection|Get a list of the [driveProtectionRule](../resources/driveprotectionrule.md) objects and their properties.|
|[Create](../api/protectionrulebase-post.md)|[driveProtectionRule](../resources/driveprotectionrule.md)|Create a new [driveProtectionRule](../resources/driveprotectionrule.md).|
|[Get](../api/protectionrulebase-get.md)|[driveProtectionRule](../resources/driveprotectionrule.md)|Read the properties and relationships of a [driveProtectionRule](../resources/driveprotectionrule.md).|
|[Delete](../api/protectionrulebase-delete.md)|None|Delete a [driveProtectionRule](../resources/driveprotectionrule.md).|
|[Run](../api/protectionrulebase-run.md)|[protectionRuleBase](../resources/protectionrulebase.md)|Activate a drive protection rule.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the protection rule associated with the policy.|
|createdBy|[identitySet](../resources/identityset.md) entitySet|The identity of the person who created the rule.|
|createdDateTime|DateTimeOffset|The date and time that the rule was created.|
|driveExpression|String|Contains a drive expression. For examples, see [driveExpression examples](../resources/driveprotectionrule.md#driveexpression-examples).|
|error|[publicError](../resources/publicerror.md)|If the operation fails, contain the details of the error.|
|isAutoApplyEnabled|Boolean| `true` indicates that the protection rule is dynamic; `false` that it's static. Static rules run one time while dynamic rules listen to all changes in the system and update the protection unit list. Currently, only static rules are supported.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity of the person who last modified this rule.|
|lastModifiedDateTime|DateTimeOffset|The timestamp of the last modification to this rule.|
|status|[protectionRuleStatus](../resources/driveprotectionrule.md#protectionrulestatus-values )|The status of the protection rule. The following are the possible values: `draft`, `active`, `completed`, `completedWithErrors`, `unknownFutureValue`.|

### driveExpression examples

The following table shows possible formats for the drive expression.

| Property                                 | Operator                                   | Example                                                                  |
| ------------------------------------------- | -------------------------------------- | -------------------------------------------------------------------------------------------- |
| `memberOf`      | `-any` |  `(memberOf -any (group.id -in ['d7f5150a-0c6f-4894-a6a1-6df77b26f375']))`         |
| `group.id` | `-in` |   `(memberOf -any (group.id -in ['d7f5150a-0c6f-4894-a6a1-6df77b26f375', '363cdbd0-f091-4644-93e4-64c1020c94d8']))`              |  

### protectionRuleStatus values

|Member | Description |
|:------|:------------|
|draft | The initial status of protection rule upon creation is draft.|
|active | The status of the protection rule upon using the `/run` API.|
|completed | The status of the protection rule after it's successfully applied to the corresponding policy.|
|completedWithErrors | The status of the protection rule after it's applied to the corresponding policy and any failures occurred.|
|unknownFutureValue | Evolvable enumeration sentinel value. Don't use.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.driveProtectionRule",
  "baseType": "microsoft.graph.protectionRuleBase",
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
