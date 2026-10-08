---
title: "cloudFirewallSourceAddress resource type"
description: "Represents an abstract base type for cloud firewall source addresses."
author: "shkhalid"
ms.date: 01/26/2026
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# cloudFirewallSourceAddress resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an abstract base type for [cloud firewall source addresses](../resources/networkaccess-cloudfirewallsourcematching.md). Use the `@odata.type` property to specify the concrete derived type in requests. Currently, only IP address types are supported for sources.

The following type is derived from this resource:

- [microsoft.graph.networkaccess.cloudFirewallSourceIpAddress](networkaccess-cloudfirewallsourceipaddress.md)

## Properties

None.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.cloudFirewallSourceAddress"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.cloudFirewallSourceAddress"
}
```
