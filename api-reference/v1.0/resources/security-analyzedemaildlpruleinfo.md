---
title: "analyzedEmailDlpRuleInfo resource type"
description: "Represents data loss prevention rules applied to the email."
author: akgraph
ms.localizationpriority: medium
ms.subservice: security
doc_type: resourcePageType
ms.date: 05/27/2026
---

# analyzedEmailDlpRuleInfo resource type

Namespace: microsoft.graph.security


Represents data loss prevention rules applied to the email. It's returned in the **dlpRules** property of [analyzedEmail](../resources/security-analyzedemail.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|name|String|Name of the the data loss prevention rule.|
|ruleId|String|Unique identifier of the data loss prevention rule.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.analyzedEmailDlpRuleInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.analyzedEmailDlpRuleInfo",
  "ruleId": "String",
  "name": "String"
}
```

