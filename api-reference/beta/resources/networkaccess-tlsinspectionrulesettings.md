---
title: "tlsInspectionRuleSettings resource type"
description: "Defines settings for a TLS inspection rule."
author: "sisharm"
ms.date: 05/23/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# tlsInspectionRuleSettings resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

For details about the parent resource, see [tlsInspectionRule](../resources/networkaccess-tlsinspectionrule.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|status|microsoft.graph.networkaccess.securityRuleStatus|The enforcement status of the rule. The possible values are: `enabled`, `disabled`, `reportOnly`, `unknownFutureValue`. Supports `$filter` (`eq`, `ne`).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.tlsInspectionRuleSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.tlsInspectionRuleSettings",
  "status": "String"
}
```
