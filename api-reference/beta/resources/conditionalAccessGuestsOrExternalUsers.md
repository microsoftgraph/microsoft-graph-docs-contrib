---
title: "conditionalAccessGuestsOrExternalUsers resource type"
description: "Represents internal guests or external users in the policy scope."
ms.localizationpriority: medium
author: "sandeo"
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# conditionalAccessGuestsOrExternalUsers resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents internal guests and/or external users in the policy scope.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| guestOrExternalUserTypes | conditionalAccessGuestOrExternalUserTypes | Flagged enum of the types of internal guests or external users. Supported values include `b2bCollaborationGuest`, `b2bCollaborationMember`, `b2bDirectConnectUser`, `internalGuest` and `OtherExternalUser`. |
| externalTenants | conditionalAccessExternalTenants | The tenant ids of selected types of external users. It could be either all b2b tenants, or a collection of tenant ids. External tenants can be specified only when `guestOrExternalUserTypes` is not null or an empty string. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "guestOrExternalUserTypes",
    "externalTenants"
  ],
  "@odata.type": "microsoft.graph.conditionalAccessGuestOrExternalUserTypes",
  "@odata.type": "microsoft.graph.conditionalAccessExternalTenants",
  "baseType": null
}-->

```json
{
  "guestOrExternalUserTypes": {"@odata.type": "microsoft.graph.conditionalAccessGuestOrExternalUserTypes"},
  "externalTenants": {"@odata.type": "microsoft.graph.conditionalAccessExternalTenants"}
}
```
