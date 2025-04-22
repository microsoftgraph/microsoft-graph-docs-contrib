---
title: "policyLocation resource type"
toc.title: "policyLocation (preview)"
description: "Abstract base type representing a location (like a domain or URL) to which a data protection policy applies."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourceTypePageType
---

# policyLocation

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Abstract base type representing a location (like a domain or URL) to which a data protection policy applies. Found within the `locations` collection of [policyScopeBase](../resources/policyscopebase.md) derived types. Derived types like `policyLocationDomain` and `policyLocationUrl` provide concrete location types.

## Properties

| Property | Type   | Description                                                    |
| :------- | :----- | :------------------------------------------------------------- |
| value    | String | The actual value representing the location (for example, "contoso.com", "https://partner.contoso.com/upload"). |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource. Note this is an abstract type and isn't instantiated directly.
<!-- {
  "blockType": "resource",
  "abstract": true,
  "@odata.type": "microsoft.graph.policyLocation",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.policyLocation",
  "value": "String"
  // Derived types specify the @odata.type, e.g., "#microsoft.graph.policyLocationDomain"
}
```
