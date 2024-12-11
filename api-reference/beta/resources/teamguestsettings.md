---
title: "teamGuestSettings resource type"
description: "Settings to configure whether guests can create, update, or delete channels in the team."
ms.localizationpriority: medium
author: "MSFTRickyCastaneda"
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 08/16/2024
---

# teamGuestSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Settings to configure whether guests can create, update, or delete channels in the [team](team.md).

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|allowCreateUpdateChannels|Boolean|If set to true, guests can add and update channels.|
|allowDeleteChannels|Boolean|If set to true, guests can delete channels.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamGuestSettings"
}-->

```json
{
  "allowCreateUpdateChannels": true,
  "allowDeleteChannels": true
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "team's guestSettings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


