---
title: "teamworkMessaging resource type"
description: "Represents the messaging functionality available in Microsoft Teams teamwork within an organization."
author: "mea"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 06/16/2026
---

# teamworkMessaging resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the messaging functionality available in Microsoft Teams teamwork within an organization. This resource provides access to custom emojis that can be used in chat and channel messages.

Inherits from [entity](../resources/entity.md).

## Methods

| Method       | Return type       | Description       |
|:-------------|:------------------|:------------------|
| [List customEmojis](../api/teamworkmessaging-list-customemojis.md) | [teamworkCustomEmoji](../resources/teamworkcustomemoji.md) collection | Get a list of custom emojis available in the organization. |
| [Create teamworkCustomEmoji](../api/teamworkmessaging-post-customemojis.md) | [teamworkCustomEmoji](../resources/teamworkcustomemoji.md) | Upload a new custom emoji to the organization. |

## Properties

| Property | Type   | Description |
|:---------|:-------|:------------|
| id       | String | The unique identifier. Inherited from [entity](../resources/entity.md). |

## Relationships

| Relationship | Type | Description |
|:-------------|:-----|:------------|
| customEmojis | [teamworkCustomEmoji](../resources/teamworkcustomemoji.md) collection | The collection of custom emojis available in organization messaging. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamworkMessaging",
  "baseType": "microsoft.graph.entity",
  "openType": false
} -->
```json
{
    "@odata.type": "#microsoft.graph.teamworkMessaging",
    "id": "String (identifier)"
}
```

## Related content

- [teamwork resource type](../resources/teamwork.md)
- [teamworkCustomEmoji resource type](../resources/teamworkcustomemoji.md)
