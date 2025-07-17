---
title: "teamMemberSettings resource type"
description: "Settings to configure whether members can perform certain actions, for example, create channels and add bots, in the team."
ms.localizationpriority: medium
author: "akjo"
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# teamMemberSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Settings to configure whether members can perform certain actions, for example, create channels and add bots, in the [team](team.md).

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|allowCreateUpdateChannels|Boolean|If set to true, members can add and update any channels.|
|allowCreatePrivateChannels|Boolean|If set to true, members can add and update private channels.|
|allowDeleteChannels|Boolean|If set to true, members can delete channels.|
|allowAddRemoveApps|Boolean|If set to true, members can add and remove apps.|
|allowCreateUpdateRemoveTabs|Boolean|If set to true, members can add, update, and remove tabs. |
|allowCreateUpdateRemoveConnectors|Boolean|If set to true, members can add, update, and remove connectors.|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamMemberSettings"
}-->

```json
{
  "allowCreateUpdateChannels": true,
  "allowCreatePrivateChannels": true,
  "allowDeleteChannels": true,
  "allowAddRemoveApps": true,
  "allowCreateUpdateRemoveTabs": true,
  "allowCreateUpdateRemoveConnectors": true
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "team's memberSettings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


