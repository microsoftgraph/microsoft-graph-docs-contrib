---
title: "cloudFirewallDestinationAddress resource type"
description: "Represents an abstract base type for cloud firewall destination addresses."
author: "shkhalid"
ms.date: 01/26/2026
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# cloudFirewallDestinationAddress resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an abstract base type for matching addresses in a [cloud firewall destination](../resources/networkaccess-cloudfirewalldestinationmatching.md). Use the `@odata.type` property to specify the concrete derived type in requests.

The following types are derived from this resource:

- [microsoft.graph.networkaccess.cloudFirewallDestinationIpAddress](../resources/networkaccess-cloudfirewalldestinationipaddress.md)
- [microsoft.graph.networkaccess.cloudFirewallDestinationFqdnAddress](../resources/networkaccess-cloudfirewalldestinationfqdnaddress.md)

## Properties

None.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.cloudFirewallDestinationAddress"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.cloudFirewallDestinationAddress"
}
```
