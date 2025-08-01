---
title: "threatIntelligenceFqdnDestination resource type"
description: "Represents a collection of fully qualified domain names (FQDNs) associated with potential security threats."
author: "fgomulka"
ms.date: 06/05/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# threatIntelligenceFqdnDestination resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a collection of fully qualified domain names (FQDNs) associated with potential security threats. These domains can be used in threat intelligence policies to identify and block access to malicious destinations. Parent resource [threatintelligenceMatchingConditions](networkaccess-threatintelligencematchingconditions.md) consumes this complex type. 


Inherits from [microsoft.graph.networkaccess.threatIntelligenceDestination](../resources/networkaccess-threatintelligencedestination.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|values|String collection|A collection of fully qualified domain names (FQDNs) associated with potential security threats.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.threatIntelligenceFqdnDestination"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.threatIntelligenceFqdnDestination",
  "values": [
    "String"
  ]
}
```

