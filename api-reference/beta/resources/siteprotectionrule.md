---
title: "siteProtectionRule resource type"
description: "Describes site protection rule and its properties"
author: "tushar20, manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# siteProtectionRule resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes Site Protection Rule and its properties. It is associated to the SharePoint Protection Policy.

Inherits from [protectionRuleBase](../resources/protectionrulebase.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List siteProtectionRule](../api/sharepointprotectionpolicy-list-siteinclusionrules.md)|[siteProtectionRule](../resources/siteprotectionrule.md) collection|Get a list of the [siteProtectionRule](../resources/siteprotectionrule.md) and their properties.|
|[Create siteProtectionRule](../api/sharepointprotectionpolicy-create-siteinclusionrules.md)|[siteProtectionRule](../resources/siteprotectionrule.md)|Create a new [siteProtectionRule](../resources/siteprotectionrule.md).|
|[Get siteProtectionRule](../api/sharepointprotectionpolicy-get-siteinclusionrules.md)|[siteProtectionRule](../resources/siteprotectionrule.md)|Read the properties and relationships of a [siteProtectionRule](../resources/siteprotectionrule.md).|
|[Delete siteProtectionRule](../api/sharepointprotectionpolicy-delete-siteinclusionrules.md)|None|Delete a [siteProtectionRule](../resources/siteprotectionrule.md).|
|[run](../api/sharepointprotectionpolicy-run-siteinclusionrules.md)|[protectionRuleBase](../resources/protectionrulebase.md)|Upon running the protection rule using the /run API, the status of protectionRuleBase transitions to active.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the protection rule associated with the policy.|
|createdBy|[identitySet](../resources/identityset.md)|The identity of the person who created the rule.|
|createdDateTime|DateTimeOffset|The date and time that the rule was created.|
|error|[publicError](../resources/publicerror.md)|Error details will be populated here, if any operation on rule expression fails.|
|isAutoApplyEnabled|Boolean|A boolean flag indicating whether the protection rule is static or dynamic. Static rules gets executed one time whereas dynamic rule listens to all changes in the system and updates the protection unit list.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity of the person who last modified this rule.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of last modification of this rule.|
|siteExpression|String|Contains site expression. [siteExpression example](../resources/siteprotectionrule.md#siteexpression-examples).|
|status|[protectionRuleStatus](../resources/siteprotectionrule.md#protectionrulestatus-values )|Status of the Protection Rule. It determines the execution status of the rule. The possible values are: `draft`, `active`, `completed`, `completedWithErrors`, `unknownFutureValue`.|

### siteExpression examples

The site expression can be of following formats.
| Property                                 | Operator                                | Example                                                                  |
| ------------------------------------------- | ----------------------------------------------------------------- | --------------------------------------------------- |
| `displayName`      | `-contains` |   `((displayName -contains 'Finance') -or (displayName -contains 'Legal'))`  |
| `lastModifiedDateTime` | `-ge` |    `(((displayName -contains 'Finance') -or (webUrl -contains 'Legal')) -and (lastModifiedDateTime -ge '2024-02-26T11:36:20Z'))`   |
| `webUrl` | `-contains` |    `((displayName -contains 'Finance') -or (webUrl -contains 'Legal'))`     |

### protectionRuleStatus values

|Member | Description |
|:------|:------------|
|draft | The initial status of Protection Rule upon creation is draft.|
|active | Upon running the Protection Rule using the /run API, the status of Protection Rule transitions to active. The state transition is draft to active.|
|completed |Once the Protection Rule is successfully applied to the corresponding policy, the status of Protection Rule will be completed. The state transition is active to completed.|
|completedWithErrors | In case of any failures while applying the Protection Rule to the corresponding policy, the status of protectionRuleBase will be completedWithErrors. The state transition is active to completedWithErrors.|
|unknownFutureValue | Evolvable enumeration sentinel value. Do not use.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.siteProtectionRule",
  "baseType": "microsoft.graph.protectionRuleBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.siteProtectionRule",
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
  "siteExpression": "String"
}
```
