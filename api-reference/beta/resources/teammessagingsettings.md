---
title: "teamMessagingSettings resource type"
description: "Settings to configure messaging and mentions in the team."
author: "MSFTRickyCastaneda"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 08/16/2024
---

# teamMessagingSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Settings to configure messaging and mentions in the [team](team.md).

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|allowUserEditMessages|Boolean|If set to true, users can edit their messages.|
|allowUserDeleteMessages|Boolean|If set to true, users can delete their messages.|
|allowOwnerDeleteMessages|Boolean|If set to true, owners can delete any message.|
|allowTeamMentions|Boolean|If set to true, @team mentions are allowed.|
|allowChannelMentions|Boolean|If set to true, @channel mentions are allowed.|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
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
<!--
{
  "type": "#page.annotation",
  "description": "team's messagingSettings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


