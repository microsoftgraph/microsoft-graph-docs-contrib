---
title: "tlsInspectionDestination resource type"
description: "An abstract type that represents the set of destinations to be matched in TLS inspection rules. This type serves as a base for specific destination types like FQDN and web categories in TLS inspection policies."
author: "sisharm"
ms.date: 05/23/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# tlsInspectionDestination resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that represents the set of destinations to be matched in [TLS inspection rules](../resources/networkaccess-tlsinspectionrule.md). This type serves as a base for specific destination types like FQDN and web categories in TLS inspection policies.

This is an abstract type that can be instantiated as either:
- [tlsInspectionFqdnDestination](networkaccess-tlsinspectionfqdndestination.md) - For matching against fully qualified domain names (FQDNs)
- [tlsInspectionWebCategoryDestination](networkaccess-tlsinspectionwebcategorydestination.md) - For matching against predefined web categories

## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.tlsInspectionDestination"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.tlsInspectionDestination"
}
```