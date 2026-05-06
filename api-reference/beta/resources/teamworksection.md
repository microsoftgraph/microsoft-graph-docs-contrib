---
title: "teamworkSection resource type"
description: "Represents a section in a user's Microsoft Teams chat list that organizes chats, channels, and meetings into custom or system-defined groups."
author: "jsinghmokha"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 03/08/2026
---

# teamworkSection resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a section in a user's Microsoft Teams chat list that organizes chats, channels, and meetings into custom or system-defined groups. Sections can be user-defined, allowing users to create, rename, and delete them, or system-defined, which are managed by the service.

## Methods

| Method | Return type | Description |
|:-------|:------------|:------------|
| [List](../api/userteamwork-list-sections.md) | [teamworkSection](teamworksection.md) collection | Get the list of [sections](../resources/teamworksection.md) in a user's [teamwork](../resources/userteamwork.md). |
| [Create](../api/userteamwork-post-sections.md) | [teamworkSection](teamworksection.md) | Create a new [section](../resources/teamworksection.md) in a user's [teamwork](../resources/userteamwork.md). |
| [Get](../api/teamworksection-get.md) | [teamworkSection](teamworksection.md) | Read the properties of a [section](../resources/teamworksection.md) in a user's [teamwork](../resources/userteamwork.md). |
| [Update](../api/teamworksection-update.md) | [teamworkSection](teamworksection.md) | Update the properties of a [section](../resources/teamworksection.md) in a user's [teamwork](../resources/userteamwork.md). |
| [Delete](../api/teamworksection-delete.md) | None | Delete a user-defined [section](../resources/teamworksection.md) from a user's [teamwork](../resources/userteamwork.md). |
| [List items](../api/teamworksection-list-items.md) | [teamworkSectionItem](teamworksectionitem.md) collection | Get the list of [items](../resources/teamworksectionitem.md) in a [section](../resources/teamworksection.md) of a user's [teamwork](../resources/userteamwork.md). |

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
| createdDateTime | DateTimeOffset | Date and time when the section was created. Read-only. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2024, is `2024-01-01T00:00:00Z`. |
| displayIcon | [sectionDisplayIcon](sectiondisplayicon.md) | The icon displayed for the section. |
| displayName | String | The display name of the section. Required. Maximum length is 50 characters. Display names are case-sensitive and must be unique within a user's sections. The following names are reserved for system-defined sections and can't be used when creating a user-defined section: `RecentChats`, `QuickViews`, `TeamsAndChannels`, `MutedChats`, `MeetingChats`, `EngageCommunities`. |
| id | String | The unique identifier for the section. Read-only. |
| isExpanded | Boolean | Indicates whether the section is expanded in the user interface. The default value is `true`. |
| isHierarchicalViewEnabled | Boolean | Indicates whether the hierarchical view is enabled for the section. Read-only. |
| lastModifiedDateTime | DateTimeOffset | Date and time when the section was last modified. Read-only. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2024, is `2024-01-01T00:00:00Z`. |
| sectionType | [sectionType](#sectiontype-values) | The type of the section. The possible values are: `userDefined`, `systemDefined`, `unknownFutureValue`. Read-only. |
| sortType | [sectionSortType](#sectionsorttype-values) | The sort order of items in the section. The valid values depend on the **sectionType**. The possible values are: `mostRecent`, `unreadThenMostRecent`, `nameAlphabetical`, `userDefinedCustomOrder`, `unknownFutureValue`. |

### sectionType values

| Member | Description |
|:-------|:------------|
| userDefined | A section created by the user that can be renamed, reordered, and deleted. |
| systemDefined | A section managed by the service that can't be deleted. Only the **sortType** property can be updated. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

#### System-defined sections

System-defined sections are provisioned by the service and appear in every user's section list. Their **displayName** values are reserved and can't be used for user-defined sections.

| displayName | Description |
|:------------|:------------|
| RecentChats | The default chats section. |
| QuickViews | The Quick views section. |
| TeamsAndChannels | The teams and channels section. |
| MutedChats | The muted chats section. |
| MeetingChats | The meeting chats section. |
| EngageCommunities | The communities section. |

System-defined sections can't be deleted, and only the **sortType** property can be updated. Attempts to update other properties or to delete a system-defined section return `403 Forbidden`. Listing [items](teamworksectionitem.md) on a system-defined section is not supported and returns `400 Bad Request`.

### sectionSortType values

| Member | Description |
|:-------|:------------|
| mostRecent | Sort items by most recent activity. Valid for user-defined and most system-defined sections. |
| unreadThenMostRecent | Sort unread items first, then by most recent activity. Valid for user-defined and most system-defined sections. |
| nameAlphabetical | Sort items alphabetically by name. Valid for specific system-defined sections only, such as *Teams* and *Channels*. Not valid for user-defined sections. |
| userDefinedCustomOrder | Sort items according to a user-defined custom order. Valid for user-defined sections only. This is the default sort type for new user-defined sections. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

> [!NOTE]
> The valid sort types for system-defined sections depend on the specific section. For example, the *Teams* and *Channels* sections support `nameAlphabetical`, but the *RecentChats* and *MutedChats* sections support only `mostRecent` and `unreadThenMostRecent`. When the property **isHierarchicalViewEnabled** is set to `true` for a *Teams* and *Channels* section, only `nameAlphabetical` is valid. Setting an unsupported sort type returns a `400 Bad Request` error.

### Instance attributes

Instance attributes are properties with special behaviors. These properties are temporary and either a) define behavior the service should perform or b) provide short-term property values, like a download URL for an item that expires.

| Property name | Type | Description |
|:-----------|:-----|:------------|
| @microsoft.graph.sectionsOrder | String collection | An ordered array of section IDs that represent the user's preferred section order. |
| @microsoft.graph.sectionsVersion | String | The current section hierarchy version. Use this value as the `If-Match` header for optimistic concurrency control on mutation operations (create, update, or delete sections, and add, remove, or move items). |

## Relationships

| Relationship | Type | Description |
|:-------------|:-----|:------------|
| items | [teamworkSectionItem](teamworksectionitem.md) collection | The items (chats, channels, meetings, or communities) organized within the section. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "displayIcon",
    "isExpanded",
    "isHierarchicalViewEnabled",
    "sortType"
  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamworkSection"
}-->

```json
{
  "@odata.type": "#microsoft.graph.teamworkSection",
  "createdDateTime": "String (timestamp)",
  "displayIcon": {"@odata.type": "microsoft.graph.sectionDisplayIcon"},
  "displayName": "String",
  "id": "String (identifier)",
  "isExpanded": "Boolean",
  "isHierarchicalViewEnabled": "Boolean",
  "lastModifiedDateTime": "String (timestamp)",
  "sectionType": "String",
  "sortType": "String"
}
```

<!-- uuid: a1b2c3d4-e5f6-7890-abcd-ef1234567890
2026-03-08 00:00:00 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "teamworkSection resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}
-->

## Related content

- [teamworkSectionItem resource type](teamworksectionitem.md)
- [userTeamwork resource type](userteamwork.md)
