---
title: "localConnectivityConfiguration resource type"
description: "Specifies Microsoft's end of the tunnel configuration for a device link."
author: "Moti-ba"
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: resourcePageType
---

# localConnectivityConfiguration resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies the Microsoft end of the tunnel configuration for a device link.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|asn|Int32|Specifies ASN of one end of IPSec tunnel (local or peer).|
|bgpAddress|String|Specifies BGP IPv4 address of one end of IPSec tunnel (local or peer).|
|endpoint|String|Specifies public IPv4 address of one end of IPSec tunnel (local or peer).|
|region|microsoft.graph.networkaccess.region| Specifies the region in which the Microsoft end of the tunnel exists. Not applicable for peer configuration. The possible values are: `eastUS`, `eastUS2`, `westUS`, `westUS2`, `westUS3`, `centralUS`, `northCentralUS`, `southCentralUS`, `northEurope`, `westEurope`, `franceCentral`, `germanyWestCentral`, `switzerlandNorth`, `ukSouth`, `canadaEast`, `canadaCentral`, `southAfricaWest`, `southAfricaNorth`, `uaeNorth`,`unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.localConnectivityConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.localConnectivityConfiguration",
  "endpoint": "String",
  "asn": "Integer",
  "bgpAddress": "String",
  "region": "String"
}
```

