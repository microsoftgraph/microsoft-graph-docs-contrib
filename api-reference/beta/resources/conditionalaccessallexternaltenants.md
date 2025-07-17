---
title: "conditionalAccessAllExternalTenants resource type"
description: "Represents all external tenants in a policy scope."
ms.localizationpriority: medium
author: "SanDeo-MSFT"
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# conditionalAccessAllExternalTenants resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents all external tenants in a policy scope.

Inherits from [conditionalAccessExternalTenants](conditionalaccessexternaltenants.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| membershipKind |conditionalAccessExternalTenantsMembershipKind | The membership kind. Possible values are: `all`, `enumerated`, `unknownFutureValue`. The `enumerated` member references an [conditionalAccessEnumeratedExternalTenants](conditionalaccessenumeratedexternaltenants.md) object. Inherited from [conditionalAccessExternalTenants](conditionalaccessexternaltenants.md). |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

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
