---
title: "ruleDestination resource type"
description: "Represents the list of potential destinations and destination types that the user could be accessing in the context of a network filtering policy, including IPs and FQDNs or URLs."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# ruleDestination resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This is an abstract type from which the following resources are derived:
- [fqdn](networkaccess-fqdn.md)
- [ipAddress](networkaccess-ipaddress.md)
- [ipRange](networkaccess-iprange.md)
- [ipSubnet](networkaccess-ipsubnet.md)
- [url](networkaccess-url.md)


## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.ruleDestination"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.ruleDestination"
}
```

