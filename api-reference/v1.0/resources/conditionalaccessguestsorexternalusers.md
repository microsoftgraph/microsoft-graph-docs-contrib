---
title: "conditionalAccessGuestsOrExternalUsers resource type"
description: "Represents internal guests or external users in the policy scope."
ms.localizationpriority: medium
author: "dmilchuk"
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# conditionalAccessGuestsOrExternalUsers resource type

Namespace: microsoft.graph

Represents internal guests and/or external users in the policy scope.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| guestOrExternalUserTypes | conditionalAccessGuestOrExternalUserTypes | Represents internal guests or external user types. This is a multi-valued property. Supported values are: `b2bCollaborationGuest`, `b2bCollaborationMember`, `b2bDirectConnectUser`, `internalGuest`, `OtherExternalUser`, `serviceProvider` and `unknownFutureValue`. |
| externalTenants | [conditionalAccessExternalTenants](conditionalaccessexternaltenants.md) | The tenant ids of the selected types of external users. It could be either all b2b tenant, or a collection of tenant ids. External tenants can be specified only when `guestOrExternalUserTypes` is not null or an empty string. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.conditionalAccessGuestsOrExternalUsers"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.conditionalAccessGuestsOrExternalUsers",
  "guestOrExternalUserTypes": "String",
  "externalTenants": {
    "@odata.type": "microsoft.graph.conditionalAccessExternalTenants"
  }
}
```
