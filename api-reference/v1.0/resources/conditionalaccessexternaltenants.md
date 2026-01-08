---
title: "conditionalAccessExternalTenants resource type"
description: "An abstract type that represents external tenants in a policy scope."
ms.localizationpriority: medium
author: "SanDeo-MSFT"
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# conditionalAccessExternalTenants resource type

Namespace: microsoft.graph

An abstract type that represents external tenants in a policy scope.

Base type of [conditionalAccessAllExternalTenants](../resources/conditionalaccessallexternaltenants.md) and [conditionalAccessEnumeratedExternalTenants](conditionalaccessenumeratedexternaltenants.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| membershipKind |conditionalAccessExternalTenantsMembershipKind | The membership kind. The possible values are: `all`, `enumerated`, `unknownFutureValue`. The `enumerated` member references an [conditionalAccessEnumeratedExternalTenants](conditionalaccessenumeratedexternaltenants.md) object.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

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
