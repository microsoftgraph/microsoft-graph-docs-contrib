---
title: "ipRange resource type"
description: "IP range base class for representing IPV4 and IPV6 address ranges."
ms.localizationpriority: medium
author: "davidspooner"
ms.prod: "directory-management"
doc_type: resourcePageType
---

# ipRange resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An IP range abstract type from which the [iPv4CidrRange](ipv4cidrrange.md) and [iPv6CidrRange](ipv6cidrrange.md) resource types for configuring [ipNamedLocation](ipnamedlocation.md) objects are derived.

The [iPv4CidrRange](ipv4cidrrange.md) derived type is used to configure IPv4 address ranges while the [iPv6CidrRange](ipv6cidrrange.md) derived type is used to configure IPv6 address ranges.

## Properties

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.ipRange"
}-->

```json
{
    "@odata.type": "#microsoft.graph.ipRange"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "ipRange resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


