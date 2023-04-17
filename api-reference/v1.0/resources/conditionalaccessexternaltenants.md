---
title: "conditionalAccessExternalTenants resource type"
description: "An abstract type that represents external tenants in the policy scope. This abstract type is inherited by conditionalAccessAllExternalTenants and conditionalAccessEnumeratedExternalTenants."
ms.localizationpriority: medium
author: "sandeo"
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# conditionalAccessExternalTenants resource type

Namespace: microsoft.graph

An abstract type that represents external tenants in the policy scope. This abstract type is inherited by conditionalAccessAllExternalTenants and conditionalAccessEnumeratedExternalTenants.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| membershipKind |conditionalAccessExternalTenantsMembershipKind | Represents the membership kind. The possible values are: `all`, `enumerated`, `unknownFutureValue`. `enumerated` references an object of [conditionalAccessEnumeratedExternalTenants](conditionalaccessenumeratedexternaltenants.md) derived type. |

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
