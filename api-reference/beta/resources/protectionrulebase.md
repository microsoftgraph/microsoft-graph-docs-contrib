---
title: "protectionRuleBase resource type"
description: "Describes protection rule and it's properties "
author: "tkanaujia, maniksingh"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# protectionRuleBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Protection rule is defined as a criterion specified by the client to identify the M365 resources that need to be protected at a defined protection plan. This rule can be of two types i.e.,

Inclusion: Protection policy should contain units that match the specified criteria.
Exclusion: Protection policy should NOT contain units that match the specified criteria.
The rule execution policy can also be static or dynamic i.e., whether the rule needs to be executed one time or at a regular interval to find the matching M365 resources.

This is an abstract type.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List protectionRuleBase objects](../api/protectionrulebase-list.md)|[protectionRuleBase](../resources/protectionrulebase.md) collection|Get a list of the [protectionRuleBase](../resources/protectionrulebase.md) objects and their properties.|
|[Get protectionRuleBase](../api/protectionrulebase-get.md)|[protectionRuleBase](../resources/protectionrulebase.md)|Read the properties and relationships of a [protectionRuleBase](../resources/protectionrulebase.md) object.|
|[Update protectionRuleBase](../api/protectionrulebase-update.md)|[protectionRuleBase](../resources/protectionrulebase.md)|Update the properties of a [protectionRuleBase](../resources/protectionrulebase.md) object.|
|[Delete protectionRuleBase](../api/protectionrulebase-delete.md)|None|Delete a [protectionRuleBase](../resources/protectionrulebase.md) object.|
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

