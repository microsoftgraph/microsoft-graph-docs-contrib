---
title: "analyzedEmailExchangeTransportRuleInfo resource type"
description: Represents mail flow rules in Exchange Online.
author: MishraSoumyaMS
ms.localizationpriority: medium
ms.subservice: security
doc_type: resourcePageType
ms.date: 05/27/2026
---

# analyzedEmailExchangeTransportRuleInfo resource type

Namespace: microsoft.graph.security


Represents mail flow rules in Exchange Online. It's returned in the **exchangeTransportRules** property of [analyzedEmail](../resources/security-analyzedemail.md).

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

