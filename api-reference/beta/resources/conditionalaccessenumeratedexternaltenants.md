---
title: "conditionalAccessEnumeratedExternalTenants resource type"
description: "Represents a list of external tenants in a policy scope."
ms.localizationpriority: medium
author: "SanDeo-MSFT"
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# conditionalAccessEnumeratedExternalTenants resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a list of external tenants in a policy scope.

Inherits from [conditionalAccessExternalTenants](conditionalaccessexternaltenants.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| members | String collection | A collection of tenant IDs that define the scope of a policy targeting conditional access for guests and external users. |
| membershipKind |conditionalAccessExternalTenantsMembershipKind | The membership kind. Possible values are: `all`, `enumerated`, `unknownFutureValue`. The `enumerated` member references an [conditionalAccessEnumeratedExternalTenants](conditionalaccessenumeratedexternaltenants.md) object. Inherited from [conditionalAccessExternalTenants](conditionalaccessexternaltenants.md). |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "members"
  ],
  "@odata.type": "microsoft.graph.conditionalAccessEnumeratedExternalTenants",
  "baseType": "microsoft.graph.conditionalAccessExternalTenants"
}-->

```json
{
  "@odata.type": "#microsoft.graph.conditionalAccessEnumeratedExternalTenants",
  "members": ["String"],
  "membershipKind": "String"
}
```
