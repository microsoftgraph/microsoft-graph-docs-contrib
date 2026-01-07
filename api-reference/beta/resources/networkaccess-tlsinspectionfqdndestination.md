---
title: "tlsInspectionFqdnDestination resource type"
description: "Represents a collection of fully qualified domain name (FQDN) destinations in a TLS inspection rule, allowing administrators to specify domain names for TLS inspection matching."
author: "sisharm"
ms.date: 05/23/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# tlsInspectionFqdnDestination resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a collection of fully qualified domain name (FQDN) destinations in a [TLS inspection rule](../resources/networkaccess-tlsinspectionrule.md) for specifying domain names for TLS inspection matching.

Inherits from [microsoft.graph.networkaccess.tlsInspectionDestination](../resources/networkaccess-tlsinspectiondestination.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|values|String collection|A collection of fully qualified domain names to match against. The special value `*` represents any domain. Wildcard patterns can be used in domain names (for example: `*.contoso.com`). This collection cannot be empty or `null`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.tlsInspectionFqdnDestination"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.tlsInspectionFqdnDestination",
  "values": [
    "String"
  ]
}
```
