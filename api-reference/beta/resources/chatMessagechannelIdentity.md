---
title: "channelIdentity resource type"
description: "Chat message surfaced two new properties ChannelIdentity and Chat identity. Channel identity has channel id and team id  ."
author: "Kanaka"
doc_type: resourcePageType
localization_priority: Normal
ms.prod: "microsoft-teams"
---
# channelidentity resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]


ChannelIdentity has ChannelID and teamID which tells the channel  and team where the message was posted

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
|channelId|string|  This is the identity of the channel in which the message was posted.|
|teamId|string|  This is the identity of the team in which the message was posted.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    
  ],
  "@odata.type": "microsoft.graph.chatMessagechannelIdentity"
}-->

```json
{
  "channelId": "string",
  "teamId": "string",
  
}
```

<!-- uuid: 4DFA000D-1A5F-4299-B3DD-835E4DD2F3BF
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "channel identity  resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
