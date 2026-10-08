---
title: "teamworkCustomEmoji resource type"
description: "Represents a custom emoji that was uploaded to the teamwork messaging of the organization."
author: "mea"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 06/10/2026
---

# teamworkCustomEmoji resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a custom emoji that was uploaded to the teamwork messaging of the organization. Custom emojis can be used in chat messages and channel messages.

## Methods

| Method | Return type | Description |
|:---|:---|:---|
| [List](../api/teamworkmessaging-list-customemojis.md) | [teamworkCustomEmoji](../resources/teamworkcustomemoji.md) collection | Get a list of [custom emojis](../resources/teamworkcustomemoji.md) available in the teamwork messaging of the organization. |
| [Create](../api/teamworkmessaging-post-customemojis.md) | [teamworkCustomEmoji](../resources/teamworkcustomemoji.md) | Create a new [custom emoji](../resources/teamworkcustomemoji.md) in the teamwork messaging of the organization, which adds the custom emoji to Teams for the tenant. |

## Properties

| Property | Type | Description |
|:---|:---|:---|
| contentBytes | String | The base64-encoded image content of the emoji. Supported formats include PNG and GIF. |
| createdBy | [customEmojiFromIdentitySet](../resources/customemojifromidentityset.md) | Identity of the user who created the emoji. |
| createdDateTime | DateTimeOffset | The date and time when the emoji was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2024, is `2024-01-01T00:00:00Z`. |
| displayName | String | The unique display name of the custom emoji. Key. Must be unique and must not conflict with existing emoji names. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "displayName",
  "@odata.type": "microsoft.graph.teamworkCustomEmoji"
} -->
```json
{
    "@odata.type": "#microsoft.graph.teamworkCustomEmoji",
    "displayName": "String (identifier)",
    "contentBytes": "String",
    "createdDateTime": "String (timestamp)",
    "createdBy": {
        "@odata.type": "microsoft.graph.customEmojiFromIdentitySet"
    }
}
```

## Related content

- [teamwork resource type](../resources/teamwork.md)
