---
title: "teamworkSectionItem resource type"
description: "Represents an item, such as a chat, channel, meeting, or community, that is organized within a section in a user's Microsoft Teams chat list."
author: "jsinghmokha"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 03/08/2026
---

# teamworkSectionItem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an item, such as a chat, channel, meeting, or community, that is organized within a [section](teamworksection.md) in a user's Microsoft Teams chat list. Each item belongs to exactly one section at a time. Use the [move](../api/teamworksectionitem-move.md) action to relocate an item to a different section.

## Methods

| Method | Return type | Description |
|:-------|:------------|:------------|
| [List](../api/teamworksection-list-items.md) | [teamworkSectionItem](teamworksectionitem.md) collection | Get the list of [items](../resources/teamworksectionitem.md) in a [section](../resources/teamworksection.md) of a user's [teamwork](../resources/userteamwork.md). |
| [Add](../api/teamworksection-post-items.md) | [teamworkSectionItem](teamworksectionitem.md) | Add an [item](../resources/teamworksectionitem.md), such as a chat, channel, meeting, or community, to a user-defined [section](../resources/teamworksection.md) in a user's [teamwork](../resources/userteamwork.md). |
| [Remove](../api/teamworksectionitem-delete.md) | None | Remove an [item](../resources/teamworksectionitem.md) from a user-defined [section](../resources/teamworksection.md) in a user's [teamwork](../resources/userteamwork.md). |
| [Move](../api/teamworksectionitem-move.md) | [teamworkSectionItem](teamworksectionitem.md) | Move an [item](../resources/teamworksectionitem.md) from one user-defined [section](../resources/teamworksection.md) to another user-defined section in a user's [teamwork](../resources/userteamwork.md). |

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
| createdDateTime | DateTimeOffset | Date and time when the item was added to the section. Read-only. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2024, is `2024-01-01T00:00:00Z`. |
| id | String | The unique identifier for the item. This corresponds to the conversation ID of the underlying chat, channel, meeting, or community. For community items, the service automatically normalizes the ID to the `19:{id}@EngageCommunity` format. Read-only. |
| itemType | [sectionItemType](#sectionitemtype-values) | The type of the item. The possible values are: `chat`, `channel`, `meeting`, `community`, `unknownFutureValue`. Read-only. |
| lastModifiedDateTime | DateTimeOffset | Date and time when the item was last modified. Read-only. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2024, is `2024-01-01T00:00:00Z`. |

### sectionItemType values

| Member | Description |
|:-------|:------------|
| chat | A one-on-one or group chat conversation. |
| channel | A channel in a team. |
| meeting | A meeting chat. |
| community | A community conversation. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamworkSectionItem"
}-->

```json
{
  "@odata.type": "#microsoft.graph.teamworkSectionItem",
  "createdDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "itemType": "String",
  "lastModifiedDateTime": "String (timestamp)"
}
```

<!-- uuid: b3c4d5e6-f7a8-9012-bcde-f23456789012
2026-03-08 00:00:00 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "teamworkSectionItem resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}
-->

## Related content

- [teamworkSection resource type](teamworksection.md)
- [userTeamwork resource type](userteamwork.md)
