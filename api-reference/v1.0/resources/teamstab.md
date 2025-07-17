---
title: "teamsTab resource type"
description: "Represents a tab pinned (attached) to a channel or a chat."
ms.localizationpriority: medium
author: "AkJo"
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# teamsTab resource type

Namespace: microsoft.graph

Represents a tab pinned (attached) to a [channel](channel.md) or a [chat](chat.md).

For more information about tabs, see [Build tabs for Teams](/microsoftteams/platform/tabs/what-are-tabs).

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List tabs in channel](../api/channel-list-tabs.md) | [teamsTab](teamstab.md) | List tabs pinned to a channel.|
|[Get tab in channel](../api/channel-get-tabs.md) | [teamsTab](teamstab.md) | Read a tab pinned to a channel.|
|[Add tab to channel](../api/channel-post-tabs.md) | [teamsTab](teamstab.md) | Add (pin) a tab to a channel.|
|[Update tab in channel](../api/channel-patch-tabs.md) | [teamsTab](teamstab.md) | Update the tab properties.|
|[Remove tab from channel](../api/channel-delete-tabs.md) | None | Remove (unpin) a tab from a channel.|


## Properties

|Property|Type|Description|
|:---------------|:--------|:----------|
|  configuration        |   [teamsTabConfiguration](teamstabconfiguration.md) |  Container for custom settings applied to a tab. The tab is considered configured only once this property is set.     |
|  displayName            |   string                  |  Name of the tab.     |
|  id              |   string                  |  Identifier that uniquely identifies a specific instance of a channel tab. Read only.     |
|  webUrl          |   string                  |  Deep link URL of the tab instance. Read only.     |

## Relationships

| Relationship | Type	| Description |
|:---------------|:--------|:----------|
|teamsApp|[teamsApp](teamsapp.md) | The application that is linked to the tab. This can't be changed after tab creation. |

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
  "webUrl": "string",
  "configuration" : "teamsTabConfiguration"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "teamsTab resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

## Related content

[Configuring the built-in tab types](/graph/teams-configuring-builtin-tabs)

