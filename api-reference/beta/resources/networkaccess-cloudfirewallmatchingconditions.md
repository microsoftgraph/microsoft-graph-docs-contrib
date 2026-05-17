---
title: "cloudFirewallMatchingConditions resource type"
description: "Defines the conditions that network traffic must match for a cloud firewall rule to apply."
author: "shkhalid"
ms.date: 01/26/2026
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# cloudFirewallMatchingConditions resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the conditions that network traffic must match for a [cloud firewall rule](../resources/networkaccess-cloudfirewallrule.md) to apply. All specified conditions use "AND" logic between properties, meaning all specified criteria must be met. Within collections, items use "OR" logic, meaning any one value in the collection can match. At least one of the **sources** or **destinations** properties must have a value.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|destinations|[microsoft.graph.networkaccess.cloudFirewallDestinationMatching](../resources/networkaccess-cloudfirewalldestinationmatching.md)|Destination address, port, and protocol matching criteria. `null` means don't match on destination. Optional.|
|sources|[microsoft.graph.networkaccess.cloudFirewallSourceMatching](../resources/networkaccess-cloudfirewallsourcematching.md)|Source address and port matching criteria. `null` means don't match on source. Optional.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.cloudFirewallMatchingConditions"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.cloudFirewallMatchingConditions",
  "sources": {
    "@odata.type": "microsoft.graph.networkaccess.cloudFirewallSourceMatching"
  },
  "destinations": {
    "@odata.type": "microsoft.graph.networkaccess.cloudFirewallDestinationMatching"
  }
}
```
