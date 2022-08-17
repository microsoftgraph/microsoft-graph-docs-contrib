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
| membershipKind |conditionalAccessExternalTenantsMembershipKind collection | Enum types represent the membership kind. Supported values include `all`, `enumerated` and `unknownFutureValue`. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "membershipKind"
  ],
  "@odata.type": "microsoft.graph.conditionalAccessExternalTenantsMembershipKind",
  "baseType": null
}-->

```json
{
  "membershipKind": {"@odata.type": "microsoft.graph.conditionalAccessExternalTenantsMembershipKind"}
}
```
