---
title: "analyzedEmailExchangeTransportRuleInfo resource type"
description: Mail flow rules in Exchange Online
author: MishraSoumyaMS
ms.localizationpriority: medium
ms.prod: security
doc_type: resourcePageType
---

# analyzedEmailExchangeTransportRuleInfo resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Mail flow rules in Exchange Online
## Properties
|Property|Type|Description|
|:---|:---|:---|
|name|String|Name of the ETRs that are part of the email|
|ruleId|String|ETR rule Id|

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

