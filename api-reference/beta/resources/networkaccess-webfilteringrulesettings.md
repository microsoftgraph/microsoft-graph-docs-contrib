---
title: "webFilteringRuleSettings resource type"
description: "Represents settings that control how a web filtering rule is enforced."
author: "mialdrid"
ms.date: 09/09/2026
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# webFilteringRuleSettings resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents settings that control how a [webFilteringRule](../resources/networkaccess-webfilteringrule.md) is enforced.

This type is used by the **settings** property of [webFilteringRule](../resources/networkaccess-webfilteringrule.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|status|[microsoft.graph.networkaccess.securityRuleStatus](../resources/enums-networkaccess.md#securityrulestatus-values)|The enforcement status of the rule. The possible values are: `enabled`, `disabled`, `reportOnly`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.webFilteringRuleSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.webFilteringRuleSettings",
  "status": "String"
}
```
