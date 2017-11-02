# team resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

A team is a collection of [channels](channel.md).  A channel represents a topic, and therefore a logical isolation of discussion, within a Team. Examples can be "Friday Team Lunch" channel, and "Architecture Discussion" channel.


## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Create team](../api/group_put_team.md) | [team](team.md) | Create a new team as specified.|
|[Get team](../api/group_get_team.md) | [team](team.md) | Read properties and relationships of team object.|
|[Update team](../api/group_patch_team.md) | [team](team.md) |Update the properties of a team object. |

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|memberSettings|[teamMemberSettings](teammembersettings.md) |Settings for members to enables channel creation, adding bots etc.|
|guestSettings|[teamGuestSettings](teamGuestSettings.md) |Settings for guests to enables channel creation, adding bots etc.|
|messagingSettings|[teamMessagingSettings](teamMessagingSettings.md) |Settings for messaging and mentions in this team.|
|funSettings|[teamFunSettings](teamFunSettings.md) |Settings for giphys, memes, etc in this team.|

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.team"
}-->

```json
{  
  "memberSettings": {
    "allowCreateUpdateChannels": true,
    "allowDeleteChannels": true,
    "allowAddRemoveApps": true,
    "allowCreateUpdateRemoveTabs": true,
    "allowCreateUpdateRemoveConnectors": true    
  },
  "guestSettings": {
    "allowCreateUpdateChannels": true,
    "allowDeleteChannels": true 
  },
  "messagingSettings": {
    "allowUserEditMessages": true,
    "allowUserDeleteMessages": true,
    "allowOwnerDeleteMessages": true,
    "allowTeamMentions": true,
    "allowChannelMentions": true    
  },
  "funSettings": {
    "allowGiphy": true,
    "giphyContentRating": "strict",
    "allowStickersAndMemes": true,
    "allowCustomMemes": true
  }
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "team resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
