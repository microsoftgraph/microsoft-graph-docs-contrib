---
title: "conditionalAccessGuestsOrExternalUsers resource type"
description: "Represents internal guests and external users in a policy scope."
ms.localizationpriority: medium
author: "SanDeo-MSFT"
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# conditionalAccessGuestsOrExternalUsers resource type

Namespace: microsoft.graph

Represents internal guests and external users in a policy scope.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| externalTenants | [conditionalAccessExternalTenants](conditionalaccessexternaltenants.md) | The tenant IDs of the selected types of external users. Either all B2B tenant or a collection of tenant IDs. External tenants can be specified only when the property **guestOrExternalUserTypes** isn't `null` or an empty String. |
| guestOrExternalUserTypes | conditionalAccessGuestOrExternalUserTypes | Indicates internal guests or external user types, and is a multi-valued property. Possible values are: `none`, `internalGuest`, `b2bCollaborationGuest`, `b2bCollaborationMember`, `b2bDirectConnectUser`,  `otherExternalUser`, `serviceProvider`, `unknownFutureValue`. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

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
