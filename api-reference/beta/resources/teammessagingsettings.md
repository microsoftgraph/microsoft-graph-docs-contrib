# teamMessagingSettings resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Team messaging and mentions settings.

## teamMessagingSettings Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|allowUserEditMessages|boolean|Allow members to edit their messages.|
|allowUserDeleteMessages|boolean|Allow members to delete their messages.|
|allowOwnerDeleteMessages|boolean|Allow owners to delete any message.|
|allowTeamMentions|boolean|Allow @team mentions.|
|allowChannelMentions|boolean|Allow @channel mentions.|

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamMessagingSettings"
}-->

```json
{
  "allowUserEditMessages": true,
  "allowUserDeleteMessages": true,
  "allowOwnerDeleteMessages": true,
  "allowTeamMentions": true,
  "allowChannelMentions": true    
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "team's messagingSettings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
