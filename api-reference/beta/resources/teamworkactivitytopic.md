---
title: "teamworkActivityTopic resource type"
description: Topic of an activity feed notification
author: RamjotSingh
localization_priority: Normal
ms.prod: microsoft-teams
doc_type: resourcePageType
---

# teamworkActivityTopic resource type

Namespace: microsoft.graph

Topic of an activity feed notification.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|source|teamworkActivityTopicSource|Type of source. Possible values are: `entityUrl`, `text`. For supported graph urls, use `entityUrl`. For a custom text, use `text`|
|value|String|Value of the topic. If `source` is `entityUrl` this must be a graph url, if it is `text` this must be plain text value.|
|webUrl|String|Link to navigate user to when the notification is selected. Optional when `source` is `entityUrl`, required for `text`.|

Following resources are supported when setting `source` of `topic` to entity url

- [Team](../resources/team.md)
- [Channel message](../resources/chatmessage.md)
- [Channel tab](../resources/teamstab.md)
- [Chat](../resources/chat.md)
- [Chat message](../resources/chatmessage.md)
- Personal [teams app installation](../resources/teamsappinstallation.md)
- Teams app in [apps catalog](../resources/teamscatalogapp.md)

> **Note:** `webUrl` must start with the Microsoft Teams domain (teams.microsoft.com for example).

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkActivityTopic"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.teamworkActivityTopic",
  "source": "String",
  "value": "String",
  "webUrl": "String"
}
```

