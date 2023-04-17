---
title: "conditionalAccessAllExternalTenants resource type"
description: "Represents all external tenants in the policy scope."
ms.localizationpriority: medium
author: "sandeo"
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# conditionalAccessAllExternalTenants resource type

Namespace: microsoft.graph

Inherits from [conditionalAccessExternalTenants](conditionalaccessexternaltenants.md) resource. Represents all external tenants in the policy scope.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| membershipKind |conditionalAccessExternalTenantsMembershipKind | Represents the membership kind. Supported values are: `all`, [`enumerated`](conditionalaccessenumeratedexternaltenants.md), and `unknownFutureValue`. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.conditionalAccessAllExternalTenants"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.conditionalAccessAllExternalTenants",
  "membershipKind": "String"
}
```
