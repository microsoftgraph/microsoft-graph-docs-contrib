---
title: "cloudFirewallDestinationFqdnAddress resource type"
description: "Represents a collection of fully qualified domain names (FQDNs) for destination address matching in cloud firewall rules."
author: "shkhalid"
ms.date: 01/26/2026
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# cloudFirewallDestinationFqdnAddress resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a collection of fully qualified domain names (FQDNs) for destination address matching in [cloud firewall rules](../resources/networkaccess-cloudfirewallrule.md).

Inherits from [microsoft.graph.networkaccess.cloudFirewallDestinationAddress](../resources/networkaccess-cloudfirewalldestinationaddress.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|values|String collection|A collection of FQDNs for destination address matching (for example, `example.com`, `api.contoso.com`). Empty collections are not allowed. Required.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.cloudFirewallDestinationFqdnAddress"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.cloudFirewallDestinationFqdnAddress",
  "values": [
    "String"
  ]
}
```
