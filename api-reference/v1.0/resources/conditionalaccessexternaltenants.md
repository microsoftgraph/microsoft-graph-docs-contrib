---
title: "conditionalAccessExternalTenants resource type"
description: "An abstract type that represents external tenants in a policy scope."
ms.localizationpriority: medium
author: "sandeo"
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# conditionalAccessExternalTenants resource type

Namespace: microsoft.graph

An abstract type that represents external tenants in a policy scope.

Base type of [conditionalAccessAllExternalTenants](../resources/conditionalaccessallexternaltenants.md) and [conditionalAccessEnumeratedExternalTenants](conditionalaccessenumeratedexternaltenants.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| membershipKind |conditionalAccessExternalTenantsMembershipKind | The membership kind. Possible values are: `all`, `enumerated`, `unknownFutureValue`. The `enumerated` member references an [conditionalAccessEnumeratedExternalTenants](conditionalaccessenumeratedexternaltenants.md) object.|

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
