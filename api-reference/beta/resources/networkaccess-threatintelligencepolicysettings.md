---
title: "threatIntelligencePolicySettings resource type"
description: "Configurable settings that define how a threat intelligence policy operates."
author: "fgomulka"
ms.date: 06/05/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# threatIntelligencePolicySettings resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Configurable settings that define how a [threat intelligence policy](../resources/networkaccess-threatintelligencepolicy.md) operates. These settings control the default action to take when a threat is detected.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|defaultAction|microsoft.graph.networkaccess.threatIntelligenceAction|The default action to take when a threat is detected by the policy. This action applies when no specific rule action overrides it. The possible values are: `allow`, `block`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.threatIntelligencePolicySettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.threatIntelligencePolicySettings",
  "defaultAction": "String"
}
```

