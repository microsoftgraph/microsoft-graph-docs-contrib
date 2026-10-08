---
title: "cloudFirewallSourceIpAddress resource type"
description: "Specifies source addresses using IP addresses for cloud firewall rule matching."
author: "shkhalid"
ms.date: 01/26/2026
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# cloudFirewallSourceIpAddress resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies source addresses using IP addresses for cloud firewall rule matching. Supports IPv4, IPv6, CIDR notation, and IP ranges.

Inherits from [microsoft.graph.networkaccess.cloudFirewallSourceAddress](../resources/networkaccess-cloudfirewallsourceaddress.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|values|String collection|A collection of IP addresses. Supports IPv4, IPv6, CIDR notation (for example, `192.168.0.0/16`), and IP ranges (for example, `172.16.0.0-172.16.255.255`). The collection must not be empty. Required.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.cloudFirewallSourceIpAddress",
  "baseType": "microsoft.graph.networkaccess.cloudFirewallSourceAddress"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.cloudFirewallSourceIpAddress",
  "values": [
    "String"
  ]
}
```
