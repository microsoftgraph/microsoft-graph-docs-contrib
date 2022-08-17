---
title: "conditionalAccessEnumeratedExternalTenants resource type"
description: "Represents list of external tenants in the policy scope."
ms.localizationpriority: medium
author: "sandeo"
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# conditionalAccessEnumeratedExternalTenants resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents list of external tenants in the policy scope.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| members | String collection | A collection of tenant ids that the selected guests or external users are from. |

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
