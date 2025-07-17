---
title: "chatInfo resource type"
description: "Contains information associated with Microsoft Teams meetings."
author: "ananmishr"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# chatInfo resource type

Namespace: microsoft.graph

Contains information associated with Microsoft Teams meetings.

## Properties

| Property            | Type    | Description|
|:--------------------|:--------|:-----------|
| messageId           | String  | The unique identifier of a message in a Microsoft Teams channel. |
| replyChainMessageId | String  | The ID of the reply message. |
| threadId            | String  | The unique identifier for a thread in Microsoft Teams. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.chatInfo"
}-->
```json
{
  "messageId": "String",
  "replyChainMessageId": "String",
  "threadId": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "chatInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

