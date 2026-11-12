---
title: "detectionRule resource type"
description: "Represents a custom detection rule written in Advanced hunting to automatically recognize security events when they occur, and to trigger alerts and response actions."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 08/25/2026
---

# detectionRule resource type

Namespace: microsoft.graph.security

Represents a custom detection rule written in **Advanced hunting** to automatically recognize security events when they occur, and to trigger alerts and response actions.

Custom detection rules let you proactively monitor various events and system states by using [advanced hunting](../api/security-security-runhuntingquery.md) queries, including suspected breach activity and misconfigured endpoints. A custom detection rule automatically recognizes security events when they occur, and triggers alerts and response actions. You can set the rules to run at regular intervals, generating alerts and taking response actions whenever matches occur.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-rulesroot-list-detectionrules.md)|[microsoft.graph.security.detectionRule](../resources/security-detectionrule.md) collection|Get a list of the [detectionRule](../resources/security-detectionrule.md) objects and their properties.|
|[Create](../api/security-rulesroot-post-detectionrules.md)|[microsoft.graph.security.detectionRule](../resources/security-detectionrule.md)|Create a new [detectionRule](../resources/security-detectionrule.md) object.|
|[Get](../api/security-detectionrule-get.md)|[microsoft.graph.security.detectionRule](../resources/security-detectionrule.md)|Read the properties and relationships of a [detectionRule](../resources/security-detectionrule.md) object.|
|[Update](../api/security-detectionrule-update.md)|[microsoft.graph.security.detectionRule](../resources/security-detectionrule.md)|Update the properties of a [detectionRule](../resources/security-detectionrule.md) object.|
|[Delete](../api/security-rulesroot-delete-detectionrules.md)|None|Delete a [detectionRule](../resources/security-detectionrule.md) object.|

## Properties


|Property|Type|Description|
|:---|:---|:---|
|createdBy|String|Name of the user or application that created the rule. Read-only. Supports `$filter` (`eq`, `ne`, `not`, `in`, `startsWith`, `endsWith`, `contains`).|
|createdDateTime|DateTimeOffset|Timestamp of rule creation. Read-only. Supports `$filter` (`eq`, `ne`, `not`, `le`, `ge`, `lt`, `gt`) and `$orderby`.|
|description|String|A user-supplied description of the detection rule. Supports `$filter` (`eq`, `ne`, `not`, `in`, `startsWith`, `endsWith`, `contains`).|
|detectionAction|[microsoft.graph.security.detectionAction](../resources/security-detectionaction.md)|The actions taken when a detection is made by this rule, including the alert that is created and any automated response actions. Supports `$filter` on the following nested **alertTemplate** properties:<br><li>String: **detectionAction/alertTemplate/title**, **detectionAction/alertTemplate/description**, **detectionAction/alertTemplate/recommendedActions** &mdash; each supports `eq`, `ne`, `not`, `in`, `startsWith`, `endsWith`, `contains`.</li><li>Enum: **detectionAction/alertTemplate/severity** &mdash; supports `eq`, `ne`, `not`, `in`.</li>|
|displayName|String|The display name of the rule. Supports `$filter` (`eq`, `ne`, `not`, `in`, `startsWith`, `endsWith`, `contains`) and `$orderby`.|
|id|String|The client-provided unique identifier of the rule. Supports `$filter` (`eq`, `ne`, `not`, `in`) and `$orderby`.|
|lastModifiedBy|String|Name of the user or application that last updated the rule. Read-only. Supports `$filter` (`eq`, `ne`, `not`, `in`, `startsWith`, `endsWith`, `contains`).|
|lastModifiedDateTime|DateTimeOffset|Timestamp of when the rule was last updated. Read-only. Supports `$filter` (`eq`, `ne`, `not`, `le`, `ge`, `lt`, `gt`) and `$orderby`.|
|queryCondition|[microsoft.graph.security.queryCondition](../resources/security-querycondition.md)|The advanced hunting query that defines the detection logic of this rule. Supports `$filter` on **queryCondition/queryText** (String) with `eq`, `ne`, `not`, `in`, `startsWith`, `endsWith`, `contains`.|
|schedule|[microsoft.graph.security.ruleSchedule](../resources/security-ruleschedule.md)|The triggering schedule of this rule. Supports `$filter` on **schedule/frequency** (Duration) with `eq`, `ne`, `not`, `le`, `ge`, `lt`, `gt`. Supports `$orderby` on **schedule/frequency**.|
|status|microsoft.graph.security.detectionRuleStatus|The current run status of the rule. The possible values are: `enabled`, `disabled`, `autoDisabled`, `unknownFutureValue`. Supports `$filter` (`eq`, `ne`, `not`, `in`) and `$orderby`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.detectionRule",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.detectionRule",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "status": "String",
  "createdBy": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedBy": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "queryCondition": {
    "@odata.type": "microsoft.graph.security.queryCondition"
  },
  "schedule": {
    "@odata.type": "microsoft.graph.security.ruleSchedule"
  },
  "detectionAction": {
    "@odata.type": "microsoft.graph.security.detectionAction"
  }
}
```
