---
title: "channelIdentity resource type"
description: "Represents the identity of a channel in Microsoft Teams."
author: "Kanaka"
doc_type: resourcePageType
ms.localizationpriority: medium
ms.subservice: "teams"
ms.date: 07/22/2024
---
# channelIdentity resource type

Contains basic identification information about a channel in Microsoft Teams.

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
|channelId|string|  The identity of the channel in which the message was posted.|
|teamId|string|  The identity of the team in which the message was posted.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    
  ],
  "@odata.type": "microsoft.graph.channelIdentity"
}-->

```json
{
   "channelId":"string",
   "teamId":"string"
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
