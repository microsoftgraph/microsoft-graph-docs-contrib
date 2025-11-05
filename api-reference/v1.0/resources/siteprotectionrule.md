---
title: "siteProtectionRule resource type"
description: "Represents the properties of a protection rule associated with a SharePoint site."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
ms.date: 10/24/2024
---

# siteProtectionRule resource type

Namespace: microsoft.graph

Represents the properties of a protection rule associated with a [sharePointProtectionPolicy](../resources/sharepointprotectionpolicy.md).

Inherits from [protectionRuleBase](../resources/protectionrulebase.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/sharepointprotectionpolicy-list-siteinclusionrules.md)|[siteProtectionRule](../resources/siteprotectionrule.md) collection|Get a list of [siteProtectionRule](../resources/siteprotectionrule.md) objects and their properties.|
|[Create](../api/protectionrulebase-post.md)|[siteProtectionRule](../resources/siteprotectionrule.md)|Create a new [siteProtectionRule](../resources/siteprotectionrule.md).|
|[Get](../api/protectionrulebase-get.md)|[siteProtectionRule](../resources/siteprotectionrule.md)|Read the properties and relationships of a [siteProtectionRule](../resources/siteprotectionrule.md).|
|[Delete](../api/protectionrulebase-delete.md)|None|Delete a [siteProtectionRule](../resources/siteprotectionrule.md).|
|[Run](../api/protectionrulebase-run.md)|[protectionRuleBase](../resources/protectionrulebase.md)|Activate a site protection rule.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the protection rule associated with the policy.|
|createdBy|[identitySet](../resources/identityset.md)|The identity of the person who created the rule.|
|createdDateTime|DateTimeOffset|The date and time that the rule was created.|
|error|[publicError](../resources/publicerror.md)|Contains error details if any operation on a rule expression fails.|
|isAutoApplyEnabled|Boolean| `true` indicates that the protection rule is dynamic; `false` that it's static. Static rules run one time while dynamic rules listen to all changes in the system and update the protection unit list. Currently, only static rules are supported.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity of the person who last modified the rule.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of the last modification to the rule.|
|siteExpression|String|Contains a site expression. For examples, see [siteExpression example](../resources/siteprotectionrule.md#siteexpression-examples).|
|status|[protectionRuleStatus](../resources/protectionrulebase.md#protectionrulestatus-values)|The status of the protection rule. Supports a subset of the values for **protectionRuleStatus**. The possible values are: `draft`, `active`, `completed`, `completedWithErrors`, `unknownFutureValue`. The `draft` member is currently unsupported. Inherited from [protectionRuleBase](../resources/protectionrulebase.md). |

### siteExpression examples

The following table shows the possible formats for the site expression.

| Property                                 | Operator                                | Example                                                                  |
| ------------------------------------------- | ----------------------------------------------------------------- | --------------------------------------------------- |
| `displayName`      | `-contains` |   `((displayName -contains 'Finance') -or (displayName -contains 'Legal'))`  |
| `lastModifiedDateTime` | `-ge` |    `(((displayName -contains 'Finance') -or (webUrl -contains 'Legal')) -and (lastModifiedDateTime -ge '2024-02-26T11:36:20Z'))`   |
| `webUrl` | `-contains` |    `((displayName -contains 'Finance') -or (webUrl -contains 'Legal'))`     |

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
