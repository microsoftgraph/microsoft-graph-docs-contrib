---
title: "conditionalAccessExternalTenants resource type"
description: "Represents external tenants in the policy scope."
ms.localizationpriority: medium
author: "sandeo"
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# conditionalAccessExternalTenants resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents external tenants in the policy scope.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| membershipKind |conditionalAccessExternalTenantsMembershipKind collection | Represents the membership kind. Supported values are: `all`, [`enumerated`](conditionalaccessenumeratedexternaltenants.md) and `unknownFutureValue`. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.conditionalAccessExternalTenants"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.conditionalAccessExternalTenants",
  "membershipKind": "String"
}
```
