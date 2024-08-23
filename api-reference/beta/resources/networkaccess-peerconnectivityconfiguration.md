---
title: "peerConnectivityConfiguration resource type"
description: "Specifies the customer's end of the tunnel configuration for a device link."
author: "Moti-ba"
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: resourcePageType
---

# peerConnectivityConfiguration resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies the customer's end of the tunnel configuration for a device link.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|asn|Int32|Specifies ASN of one end of IPSec tunnel (local or peer).|
|bgpAddress|String|Specifies BGP IPv4 address of one end of IPSec tunnel (local or peer).|
|endpoint|String|Specifies public IPv4 address of one end of IPSec tunnel (local or peer).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.peerConnectivityConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.peerConnectivityConfiguration",
  "endpoint": "String",
  "asn": "Integer",
  "bgpAddress": "String"
}
```

