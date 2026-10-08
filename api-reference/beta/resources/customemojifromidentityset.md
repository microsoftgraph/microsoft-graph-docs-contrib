---
title: "customEmojiFromIdentitySet resource type"
description: "Represents the identity of the user who created a custom emoji in the teamwork messaging of the organization."
author: "mea"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 06/10/2026
---

# customEmojiFromIdentitySet resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the identity of the user who created a [custom emoji](../resources/teamworkcustomemoji.md) in the teamwork messaging of the organization.

Inherits from [identitySet](../resources/identityset.md).

## Properties

| Property | Type | Description |
|:---|:---|:---|
| application | [identity](../resources/identity.md) | If present, represents the application that created the emoji. Inherited from [identitySet](../resources/identityset.md). |
| device | [identity](../resources/identity.md) | Not implemented. Don't use. Inherited from [identitySet](../resources/identityset.md). |
| user | [teamworkUserIdentity](../resources/teamworkuseridentity.md) | If present, represents the user who created the emoji. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.customEmojiFromIdentitySet",
  "baseType": "microsoft.graph.identitySet"
} -->
```json
{
    "@odata.type": "#microsoft.graph.customEmojiFromIdentitySet",
    "user": {
        "@odata.type": "microsoft.graph.teamworkUserIdentity"
    },
    "application": {
        "@odata.type": "microsoft.graph.identity"
    },
    "device": {
        "@odata.type": "microsoft.graph.identity"
    }
}
```

## Related content

- [teamworkCustomEmoji resource type](../resources/teamworkcustomemoji.md)
- [identitySet resource type](../resources/identityset.md)
