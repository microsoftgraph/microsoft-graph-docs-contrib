---
title: "cloudFirewallDestinationMatching resource type"
description: "Defines the destination matching criteria for a cloud firewall rule, including destination addresses, ports, and protocols."
author: "shkhalid"
ms.date: 01/26/2026
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# cloudFirewallDestinationMatching resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the destination matching criteria for a [cloud firewall rule](../resources/networkaccess-cloudfirewallrule.md), including destination addresses, ports, and protocols.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|addresses|[microsoft.graph.networkaccess.cloudFirewallDestinationAddress](../resources/networkaccess-cloudfirewalldestinationaddress.md) collection|The destination addresses to match. An empty collection means don't filter by destination addresses (match all). Required.|
|ports|String collection|The destination ports to match, for example, `80`, `443`, `1024-2048`. An empty collection means don't filter by destination ports (match all). Required.|
|protocols|microsoft.graph.networkaccess.cloudFirewallProtocol|The network protocols to match. This is a flagged enumeration that allows multiple values to be selected simultaneously, for example, `tcp, udp`. An empty collection means don't filter by protocol (match all). The possible values are: `tcp`, `udp`, `unknownFutureValue`. Required.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.cloudFirewallDestinationMatching"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.cloudFirewallDestinationMatching",
  "addresses": [
    {
      "@odata.type": "microsoft.graph.networkaccess.cloudFirewallDestinationIpAddress"
    }
  ],
  "ports": ["String"],
  "protocols": "String"
}
```
