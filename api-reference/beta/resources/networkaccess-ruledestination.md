---
title: "ruleDestination resource type"
description: "Represents the list of potential destinations and destination types that the user could be accessing in the context of a network filtering policy rule or forwarding policy rule in Global Secure Access, including IPs and FQDNs or URLs."
author: "Moti-ba"
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: resourcePageType
ms.date: 07/22/2024
---

# ruleDestination resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the list of potential destinations and destination types that the user could be accessing in the context of a network [filtering policy rule](../resources/networkaccess-filteringrule.md) or [forwarding policy rule](../resources/networkaccess-forwardingrule.md) in Global Secure Access, including IPs and FQDNs or URLs.

This is an abstract type from which the following resources are derived:
- [microsoft.graph.networkaccess.fqdn](networkaccess-fqdn.md)
- [microsoft.graph.networkaccess.ipAddress](networkaccess-ipaddress.md)
- [microsoft.graph.networkaccess.ipRange](networkaccess-iprange.md)
- [microsoft.graph.networkaccess.ipSubnet](networkaccess-ipsubnet.md)
- [microsoft.graph.networkaccess.url](networkaccess-url.md)
- [microsoft.graph.networkaccess.webCategory](networkaccess-webcategory.md)


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

