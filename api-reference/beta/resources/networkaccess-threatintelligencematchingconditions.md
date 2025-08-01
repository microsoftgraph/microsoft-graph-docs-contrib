---
title: "threatIntelligenceMatchingConditions resource type"
description: "Specifies the conditions used to evaluate and match against potential threats in network traffic."
author: "fgomulka"
ms.date: 06/05/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# threatIntelligenceMatchingConditions resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies the conditions used to evaluate and match against potential threats in network traffic. These conditions define what network destinations should be considered threats and how they should be evaluated based on severity levels. Parent resource [threatIntelligenceRule](networkaccess-threatintelligencerule.md) consumes this complex type.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|destinations|[microsoft.graph.networkaccess.threatIntelligenceDestination](../resources/networkaccess-threatintelligencedestination.md) collection|A collection of destinations that are considered potential threats for network access evaluation.|
|severity|microsoft.graph.networkaccess.threatIntelligenceSeverity|The severity level of the threat associated with the destinations. Higher severity levels typically result in stricter security controls. The possible values are: `low`, `medium`, `high`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.threatIntelligenceMatchingConditions"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.threatIntelligenceMatchingConditions",
  "severity": "String",
  "destinations": [
    {
      "@odata.type": "microsoft.graph.networkaccess.threatIntelligenceFqdnDestination"
    }
  ]
}
```

