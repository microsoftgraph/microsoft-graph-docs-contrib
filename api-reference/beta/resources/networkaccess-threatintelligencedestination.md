---
title: "threatIntelligenceDestination resource type"
description: "Represents a destination that is associated with potential security threats."
author: "fgomulka"
ms.date: 06/05/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# threatIntelligenceDestination resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a destination that is associated with potential security threats. This resource type is an abstract base type for specific destination types used in threat intelligence rules.

This resource type is an abstract type from which the following resources are derived:
- [microsoft.graph.networkaccess.threatIntelligenceFqdnDestination](../resources/networkaccess-threatintelligencefqdndestination.md)
- [microsoft.graph.networkaccess.threatIntelligenceMatchingConditions](../resources/networkaccess-threatintelligencematchingconditions.md) 

Inherited from [microsoft.graph.networkaccess.destination](../resources/networkaccess-destination.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.threatIntelligenceDestination"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.threatIntelligenceDestination"
}
```

