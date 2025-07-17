---
title: "conditionalAccessUsers resource type"
description: "Represents users, groups, and roles included in and excluded from the policy scope."
ms.localizationpriority: medium
author: "lisaychuang"
ms.reviewer: conditionalaccesspm
ms.subservice: "entra-sign-in"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# conditionalAccessUsers resource type

Namespace: microsoft.graph

Represents users, groups, and roles included in and excluded from the policy scope.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| excludeGroups | String collection | Group IDs excluded from scope of policy. |
| excludeGuestsOrExternalUsers | [conditionalAccessGuestsOrExternalUsers](conditionalaccessguestsorexternalusers.md) | Internal guests or external users excluded from the policy scope. Optionally populated. |
| excludeRoles | String collection | Role IDs excluded from scope of policy. |
| excludeUsers | String collection | User IDs excluded from scope of policy and/or `GuestsOrExternalUsers`. |
| includeGroups | String collection | Group IDs in scope of policy unless explicitly excluded. |
| includeGuestsOrExternalUsers | [conditionalAccessGuestsOrExternalUsers](conditionalaccessguestsorexternalusers.md) | Internal guests or external users included in the policy scope. Optionally populated. |
| includeRoles | String collection | Role IDs in scope of policy unless explicitly excluded. |
| includeUsers | String collection | User IDs in scope of policy unless explicitly excluded, `None`, `All`, or `GuestsOrExternalUsers`. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

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
  "excludeGuestsOrExternalUsers": {"@odata.type": "microsoft.graph.conditionalAccessGuestOrExternalUsers"},
  "excludeRoles": ["String"],
  "excludeUsers": ["String"],
  "includeGroups": ["String"],
  "includeGuestsOrExternalUsers": {"@odata.type": "microsoft.graph.conditionalAccessGuestOrExternalUsers"},
  "includeRoles": ["String"],
  "includeUsers": ["String"]  
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

