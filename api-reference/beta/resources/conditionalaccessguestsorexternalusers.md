---
title: "conditionalAccessGuestsOrExternalUsers resource type"
description: "Represents internal guests and external users in a policy scope."
ms.localizationpriority: medium
author: "sandeo"
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# conditionalAccessGuestsOrExternalUsers resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents internal guests and external users in a policy scope.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| externalTenants | [conditionalAccessExternalTenants](conditionalaccessexternaltenants.md) | The tenant IDs of the selected types of external users. Either all B2B tenant or a collection of tenant IDs. External tenants can be specified only when the property **guestOrExternalUserTypes** is not `null` or an empty String. |
| guestOrExternalUserTypes | conditionalAccessGuestOrExternalUserTypes | Indicates internal guests or external user types. This is a multi-valued property. Possible values are: `none`, `internalGuest`, `b2bCollaborationGuest`, `b2bCollaborationMember`, `b2bDirectConnectUser`,  `otherExternalUser`, `serviceProvider`, `unknownFutureValue`. |

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
  "externalTenants": {
    "@odata.type": "microsoft.graph.conditionalAccessExternalTenants"
  },
  "guestOrExternalUserTypes": "String"
}
```
