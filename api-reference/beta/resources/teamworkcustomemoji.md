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

Inherits from [teamworkHostedContent](../resources/teamworkhostedcontent.md).

## Methods

| Method | Return type | Description |
|:---|:---|:---|
| [List](../api/teamworkmessaging-list-customemojis.md) | [teamworkCustomEmoji](../resources/teamworkcustomemoji.md) collection | Get a list of [custom emojis](../resources/teamworkcustomemoji.md) available in the teamwork messaging of the organization. |
| [Create](../api/teamworkmessaging-post-customemojis.md) | [teamworkCustomEmoji](../resources/teamworkcustomemoji.md) | Create a new [custom emoji](../resources/teamworkcustomemoji.md) in the teamwork messaging of the organization, which adds the custom emoji to Teams for the tenant. |
| [Get](../api/teamworkcustomemoji-get.md) | [teamworkCustomEmoji](../resources/teamworkcustomemoji.md) | Get a single [custom emoji](../resources/teamworkcustomemoji.md) or the raw image content of a custom emoji by display name from the teamwork messaging of the organization. |
| [Delete](../api/teamworkcustomemoji-delete.md) | None | Delete a [custom emoji](../resources/teamworkcustomemoji.md) by display name from the teamwork messaging of the organization. |

## Properties

| Property | Type | Description |
|:---|:---|:---|
| contentBytes | Binary | The base64-encoded image content of the emoji. Supported formats include PNG and GIF. Inherited from [teamworkHostedContent](../resources/teamworkhostedcontent.md). |
| contentType | String | The media type of the custom emoji content, such as `image/png` or `image/gif`. Inherited from [teamworkHostedContent](../resources/teamworkhostedcontent.md). |
| createdBy | [customEmojiFromIdentitySet](../resources/customemojifromidentityset.md) | Identity of the user who created the emoji. |
| createdDateTime | DateTimeOffset | The date and time when the emoji was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2024, is `2024-01-01T00:00:00Z`. |
| displayName | String | The unique display name of the custom emoji. This property is an alternate key and must not conflict with existing emoji names. |
| id | String | The service-generated identifier of the custom emoji. Inherited from [teamworkHostedContent](../resources/teamworkhostedcontent.md). |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamworkCustomEmoji",
  "baseType": "microsoft.graph.teamworkHostedContent"
} -->
```json
{
    "@odata.type": "#microsoft.graph.teamworkCustomEmoji",
    "id": "String (identifier)",
    "contentBytes": "Binary",
    "contentType": "String",
    "displayName": "String",
    "createdDateTime": "String (timestamp)",
    "createdBy": {
        "@odata.type": "microsoft.graph.customEmojiFromIdentitySet"
    }
}
```

## Related content

- [teamwork resource type](../resources/teamwork.md)
