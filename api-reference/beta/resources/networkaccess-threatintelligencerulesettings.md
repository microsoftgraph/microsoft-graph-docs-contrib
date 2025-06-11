---
title: "threatIntelligenceRuleSettings resource type"
description: "Configurable settings that define how a threat intelligence rule operates."
author: "fgomulka"
ms.date: 06/05/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# threatIntelligenceRuleSettings resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Configurable settings that define how a threat intelligence rule operates. These settings control the operational status of the rule and how it's enforced.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|status|microsoft.graph.networkaccess.securityRuleStatus|The operational status of the threat intelligence rule that determines how it's enforced. The possible values are: `enabled` (rule is active and enforced), `disabled` (rule is inactive), `reportOnly` (rule evaluates traffic but only reports matches without enforcing actions), `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.threatIntelligenceRuleSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.threatIntelligenceRuleSettings",
  "status": "String"
}
```

