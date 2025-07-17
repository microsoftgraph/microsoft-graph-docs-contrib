---
author: "spgraph-docs-team"
description: "Represents a keyed collection of identity resources."
title: "identitySet resource type"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: entra-users
ms.date: 07/23/2024
---
# identitySet resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a keyed collection of [identity](identity.md) resources. It is used to represent a set of identities associated with various events for an item, such as _created by_ or _last modified by_.

## Properties

| Property    | Type                    | Description                                             |
|:------------|:------------------------|:--------------------------------------------------------|
| application | [identity](identity.md) | Optional. The application associated with this action.  |
| applicationInstance | [identity](identity.md) | Optional. The application instance associated with this action.  |
| conversation| [identity](identity.md) | Optional. The team or channel associated with this action.       |
| conversationIdentityType| [identity](identity.md) | Optional. Indicates whether the **conversation** property identifies a team or channel.|
| device      | [identity](identity.md) | Optional. The device associated with this action.       |
| encrypted       | [identity](identity.md) | Optional. The encrypted identity associated with this action. |
| onPremises       | [identity](identity.md) | Optional. The on-premises identity associated with this action. |
| guest       | [identity](identity.md) | Optional. The guest identity associated with this action. |
| phone       | [identity](identity.md) | Optional. The phone number associated with this action. |
| user        | [identity](identity.md) | Optional. The user associated with this action.         |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identitySet",
  "optionalProperties": [
    "application",
    "applicationInstance",
    "conversation",
    "conversationIdentityType",
    "device",
    "encrypted",
    "guest",
    "phone",
    "user"
  ],
  "openType": true
} -->
```json
{
  "application": {"@odata.type": "microsoft.graph.identity"},
  "applicationInstance": {"@odata.type": "microsoft.graph.identity"},
  "conversation": {"@odata.type": "microsoft.graph.identity"},
  "conversationIdentityType": {"@odata.type": "microsoft.graph.identity"},
  "device": {"@odata.type": "microsoft.graph.identity"},
  "encrypted": {"@odata.type": "microsoft.graph.identity"},
  "onPremises": {"@odata.type": "microsoft.graph.identity"},
  "guest": {"@odata.type": "microsoft.graph.identity"},
  "phone": {"@odata.type": "microsoft.graph.identity"},
  "user": {"@odata.type": "microsoft.graph.identity"}
}
```

## Related content

For examples that show how to use **identitySet** resources, see [call](call.md).


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Identity set is a collection of identities",
  "section": "documentation",
  "tocPath": "Resources/IdentitySet"
} -->


