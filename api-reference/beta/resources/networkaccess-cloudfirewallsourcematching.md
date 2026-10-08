---
title: "cloudFirewallSourceMatching resource type"
description: "Defines the source matching criteria for a cloud firewall rule, including source addresses and ports."
author: "shkhalid"
ms.date: 01/26/2026
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# cloudFirewallSourceMatching resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the [source matching criteria](../resources/networkaccess-cloudfirewallmatchingconditions.md) for a cloud firewall rule, including source addresses and ports. Currently, only IP address types are supported for source addresses.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|addresses|[microsoft.graph.networkaccess.cloudFirewallSourceAddress](../resources/networkaccess-cloudfirewallsourceaddress.md) collection|The source addresses to match. An empty collection means don't filter by source addresses (match all). Required.|
|ports|String collection|The source ports to match, for example, `80`, `443`, `1024-2048`. An empty collection means don't filter by source ports (match all). Required.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.cloudFirewallSourceMatching"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.cloudFirewallSourceMatching",
  "addresses": [
    {
      "@odata.type": "microsoft.graph.networkaccess.cloudFirewallSourceIpAddress"
    }
  ],
  "ports": ["String"]
}
```
