---
title: "conditionalAccessEnumeratedExternalTenants resource type"
description: "Represents a list of external tenants in the policy scope."
ms.localizationpriority: medium
author: "dmilchuk"
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# conditionalAccessEnumeratedExternalTenants resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a list of external tenants in the policy scope.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| members | String collection | Represents a collection of tenant ids in the scope of Conditional Access for guests and external users policy targeting. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "members"
  ],
  "@odata.type": "microsoft.graph.conditionalAccessEnumeratedExternalTenants",
  "baseType": null
}-->

```json
{
   "members": ["String"]
}
```
