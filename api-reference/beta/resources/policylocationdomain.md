---
title: "policyLocationDomain resource type"
toc.title: "policyLocationDomain resource type (preview)"
description: "Represents a domain name as a location for data protection policy scoping."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# policyLocationDomain

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a domain name as a location for data protection policy scoping.

For example, "contoso.com", "marketing.contoso.com". Used as a location within the scope of a data protection policy. Inherits from [policyLocation](../resources/policylocation.md).

## Properties

Inherits properties from [policyLocation](../resources/policylocation.md). The `value` property holds the domain name.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.policyLocationDomain",
  "baseType": "microsoft.graph.policyLocation",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.policyLocationDomain",
  // Inherited properties from policyLocation
  "value": "String" // e.g., "contoso.com"
}
```
