---
title: "webFilteringRule resource type"
description: "Represents a rule that evaluates web traffic against source and destination matching conditions."
author: "mialdrid"
ms.date: 09/09/2026
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# webFilteringRule resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a rule that evaluates web traffic against source and destination matching conditions and applies an allow or block action.

Inherits from [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/networkaccess-webfilteringpolicy-list-policyrules.md)|[microsoft.graph.networkaccess.webFilteringRule](../resources/networkaccess-webfilteringrule.md) collection|Get a list of the webFilteringRule objects and their properties.|
|[Create](../api/networkaccess-webfilteringpolicy-post-policyrules.md)|[microsoft.graph.networkaccess.webFilteringRule](../resources/networkaccess-webfilteringrule.md)|Create a new webFilteringRule object.|
|[Get](../api/networkaccess-webfilteringrule-get.md)|[microsoft.graph.networkaccess.webFilteringRule](../resources/networkaccess-webfilteringrule.md)|Read the properties and relationships of [microsoft.graph.networkaccess.webFilteringRule](../resources/networkaccess-webfilteringrule.md) object.|
|[Update](../api/networkaccess-webfilteringrule-update.md)|[microsoft.graph.networkaccess.webFilteringRule](../resources/networkaccess-webfilteringrule.md)|Update the properties of a webFilteringRule object.|
|[Delete](../api/networkaccess-webfilteringrule-delete.md)|None|Delete a webFilteringRule object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|[microsoft.graph.networkaccess.webFilteringAction](../resources/networkaccess-webfilteringaction.md)|The action to apply when the rule matches web traffic.|
|description|String|The description of the web filtering rule.|
|id|String|The unique identifier for the web filtering rule. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|matchingConditions|[microsoft.graph.networkaccess.webFilteringMatchingConditions](../resources/networkaccess-webfilteringmatchingconditions.md)|The source and destination conditions that determine whether traffic matches the rule.|
|name|String|The display name of the web filtering rule. Inherited from [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md).|
|priority|Int64|The processing order of the rule within its policy. Rules with lower values are evaluated first.|
|settings|[microsoft.graph.networkaccess.webFilteringRuleSettings](../resources/networkaccess-webfilteringrulesettings.md)|The enforcement settings for the web filtering rule.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.webFilteringRule",
  "baseType": "microsoft.graph.networkaccess.policyRule",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.webFilteringRule",
  "id": "String (identifier)",
  "name": "String",
  "description": "String",
  "action": {
    "@odata.type": "microsoft.graph.networkaccess.webFilteringAction"
  },
  "priority": "Integer",
  "settings": {
    "@odata.type": "microsoft.graph.networkaccess.webFilteringRuleSettings"
  },
  "matchingConditions": {
    "@odata.type": "microsoft.graph.networkaccess.webFilteringMatchingConditions"
  }
}
```
