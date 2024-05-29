---
title: "analyzedEmailExchangeTransportRuleInfo resource type"
description: Represents mail flow rules in Exchange Online.
author: MishraSoumyaMS
ms.localizationpriority: medium
ms.subservice: security
doc_type: resourcePageType
---

# analyzedEmailExchangeTransportRuleInfo resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents mail flow rules in Exchange Online.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|name|String|Name of the Exchange transport rules (ETRs) that are part of the email.|
|ruleId|String|The ETR rule ID.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.analyzedEmailExchangeTransportRuleInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.analyzedEmailExchangeTransportRuleInfo",
  "ruleId": "String",
  "name": "String"
}
```

