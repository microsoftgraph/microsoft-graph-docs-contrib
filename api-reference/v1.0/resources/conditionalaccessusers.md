---
title: "conditionalAccessUsers resource type"
description: "Represents users, groups, and roles included in and excluded from the policy scope."
ms.localizationpriority: medium
author: "davidspooner"
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# conditionalAccessUsers resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents users, groups, and roles included in and excluded from the policy scope.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| excludeGroups | String collection | Group IDs excluded from scope of policy. |
| excludeGuestsOrExternalUsers | [conditionalAccessGuestsOrExternalUsers](conditionalaccessguestsorexternalusers.md) | Internal guests or external users excluded in the policy scope. Optionally populated. |
| excludeRoles | String collection | Role IDs excluded from scope of policy. |
| excludeUsers | String collection | User IDs excluded from scope of policy and/or `GuestsOrExternalUsers`. |
| includeGroups | String collection | Group IDs in scope of policy unless explicitly excluded. |
| includeGuestsOrExternalUsers | [conditionalAccessGuestsOrExternalUsers](conditionalaccessguestsorexternalusers.md) | Internal guests or external users included in the policy scope. Optionally populated. |
| includeRoles | String collection | Role IDs in scope of policy unless explicitly excluded. |
| includeUsers | String collection | User IDs in scope of policy unless explicitly excluded, `None`, `All`, or `GuestsOrExternalUsers`. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "includeUsers",
    "excludeUsers",
    "includeGuestsOrExternalUsers",
    "excludeGuestsOrExternalUsers",
    "includeGroups",
    "excludeGroups",
    "includeRoles",
    "excludeRoles"
  ],
  "@odata.type": "microsoft.graph.conditionalAccessUsers",
  "baseType": null
}-->

```json
{
  "excludeGroups": ["String"],
  "excludeRoles": ["String"],
  "excludeUsers": ["String"],
  "excludeGuestsOrExternalUsers": {"@odata.type": "microsoft.graph.conditionalAccessGuestOrExternalUsers"},
  "includeGroups": ["String"],
  "includeRoles": ["String"],
  "includeUsers": ["String"],
  "includeGuestsOrExternalUsers": {"@odata.type": "microsoft.graph.conditionalAccessGuestOrExternalUsers"}
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "conditionalAccessUsers resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

