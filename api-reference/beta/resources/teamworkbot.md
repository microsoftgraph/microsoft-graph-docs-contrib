---
title: "teamworkBot resource type"
description: "A bot in Microsoft Teams ecosystem."
author: "AkJo"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkBot resource type

Namespace: microsoft.graph

Represents a bot in the Microsoft Teams ecosystem.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get bot](../api/teamsappdefinition-get-teamworkbot.md)|[teamworkBot](../resources/teamworkbot.md)|Read the properties and relationships of a [teamworkBot](../resources/teamworkbot.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The id of the bot associated with the specific [teamsAppDefinition](../resources/teamsappdefinition.md). This value is usually a GUID.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamworkBot",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkBot",
  "id": "String (identifier)"
}
```

## See also

- [Bots installed in a team](/graph/api/team-list-installedapps#example-2-get-the-names-and-other-details-of-installed-apps?view=graph-rest-beta&preserve-view=true)
- [Bots installed in a chat](/graph/api/chat-list-installedapps#example-2-get-the-names-and-other-details-of-apps-installed-in-the-specified-chat?view=graph-rest-beta&preserve-view=true)
- [Bots installed in the personal scope of a user](/graph/api/userteamwork-list-installedapps#example-2-get-the-names-and-other-details-of-apps-installed-for-the-user?view=graph-rest-beta&preserve-view=true)



