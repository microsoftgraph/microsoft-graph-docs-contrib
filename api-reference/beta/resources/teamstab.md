---
title: "teamsTab resource type"
description: "Represents a tab pinned (attached) to a channel or a chat."
ms.localizationpriority: medium
author: "AkJo"
ms.subservice: "teams"
doc_type: resourcePageType
---

# teamsTab resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a tab pinned (attached) to a [channel](channel.md) or a [chat](chat.md).

For more information on tabs, see [Build tabs for Teams](/microsoftteams/platform/tabs/what-are-tabs).

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List tabs in channel](../api/channel-list-tabs.md) | [teamsTab](teamstab.md) | List tabs pinned to a channel.|
|[Get tab in channel](../api/channel-get-tabs.md) | [teamsTab](teamstab.md) | Get a specific tab pinned to a channel.|
|[Add tab to channel](../api/channel-post-tabs.md) | [teamsTab](teamstab.md) | Add (pin) a tab to a channel.|
|[Update tab in channel](../api/channel-patch-tabs.md) | [teamsTab](teamstab.md) | Updates the properties of a tab in a channel.|
|[Remove tab from channel](../api/channel-delete-tabs.md) | None | Remove (unpin) a tab from a channel.|
|[List tabs in chat](../api/chat-list-tabs.md) | [teamsTab](teamstab.md) | List tabs pinned to a chat.|
|[Get tab in chat](../api/chat-get-tabs.md) | [teamsTab](teamstab.md) | Get a specific tab pinned to a chat.|
|[Add tab to chat](../api/chat-post-tabs.md) | [teamsTab](teamstab.md) | Add (pin) a tab to a chat.|
|[Update tab in chat](../api/chat-patch-tabs.md) | [teamsTab](teamstab.md) | Update the properties of a tab in a chat.|
|[Remove tab from chat](../api/chat-delete-tabs.md) | None | Remove (unpin) a tab from a chat.|



## Properties

|Property|Type|Description|
|:---------------|:--------|:----------|
|  id              |   string                  |  Identifier that uniquely identifies a specific instance of a channel tab. Read only.     |
|  displayName            |   string                  |  Name of the tab.     |
|  name (deprecated)      |   string                  |  Name of the tab.     |
|  teamsAppId (deprecated)|   string             |  App definition identifier of the tab. This value can't be changed after tab creation. Because this property is deprecated, we recommend expanding **teamsApp** to retrieve the application that is linked to the tab. |
|  sortOrderIndex  |   string                  |  Index of the order used for sorting tabs.     |
|  webUrl          |   string                  |  Deep link URL of the tab instance. Read only.     |
|  configuration        |   [teamsTabConfiguration](teamstabconfiguration.md) |  Container for custom settings applied to a tab. The tab is considered configured only once this property is set.     |

## Relationships

| Relationship | Type	| Description |
|:---------------|:--------|:----------|
|teamsApp|[teamsApp](teamsapp.md) | The application that is linked to the tab. |

## JSON representation

The following JSON representation shows the resource type.


<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.teamsTab"
}-->

```json
{
  "id": "string",
  "displayName": "string",
  "teamsAppId": "string",
  "sortOrderIndex": "string",
  "webUrl": "string",
  "configuration": "teamsTabConfiguration",
  "name": "string"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "teamsTab resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

## Related content

[Configuring the built-in tab types](/graph/teams-configuring-builtin-tabs)


