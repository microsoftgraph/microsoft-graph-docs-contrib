---
title: "tlsInspectionMatchingConditions resource type"
description: "Defines the conditions used to match network traffic in TLS inspection rules"
author: "sisharm"
ms.date: 05/23/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# tlsInspectionMatchingConditions resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the conditions used to match network traffic in TLS inspection rules. 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|destinations|[microsoft.graph.networkaccess.tlsInspectionDestination](../resources/networkaccess-tlsinspectiondestination.md) collection|A collection of destinations to match against. Can include FQDN destinations and web category destinations. An empty collection means no destination matching is performed. At least one destination must have non-null properties to allow for matching.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.tlsInspectionMatchingConditions"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.tlsInspectionMatchingConditions",
  "destinations": [
    {
      "@odata.type": "microsoft.graph.networkaccess.tlsInspectionFqdnDestination"
    }
  ]
}
```

## Example
Here's an example of matching conditions with both FQDN and web category destinations:

```json
{
  "@odata.type": "#microsoft.graph.networkaccess.tlsInspectionMatchingConditions",
  "destinations": [
    {
      "@odata.type": "#microsoft.graph.networkaccess.tlsInspectionFqdnDestination",
      "values": ["contoso.com", "*.example.com"]
    },
    {
      "@odata.type": "#microsoft.graph.networkaccess.tlsInspectionWebCategoryDestination",
      "values": ["SocialNetworking", "Gambling"]
    }
  ]
}
```