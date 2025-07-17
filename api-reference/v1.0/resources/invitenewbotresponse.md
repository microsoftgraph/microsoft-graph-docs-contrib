---
title: "inviteNewBotResponse resource type"
description: "Contains a response to a request to have a participant joining notification sent out again as an incoming call notification to the desired location."
author: "yizhenww"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 03/21/2024
---

# inviteNewBotResponse resource type

Namespace: microsoft.graph

Contains a response to a request to have a participant joining notification sent out again as an incoming call notification to the desired location.

## Properties

| Property         | Type                            | Description                                                                                                                                                  |
| :--------------- | :------------------------------ | :----------------------------------------------------------------------------------------------------------------------------------------------------------- |
| inviteUri        | String                          | URI to receive new incoming call notification.                                                                                                                |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [],
  "@odata.type": "microsoft.graph.inviteNewBotResponse"
}-->
```json
{
  "inviteUri": "uri" 
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "inviteNewBotResponse resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
