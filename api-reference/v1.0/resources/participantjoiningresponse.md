---
title: "participantJoiningResponse resource type"
description: "An abstract base class that contains the response to a participant joining notification."
author: "yizhenww"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# participantJoiningResponse resource type

Namespace: microsoft.graph

An abstract base class that contains the response to a participant joining notification.

## Derived types

| Type                                                   | Description                                                                                          |
| :----------------------------------------------------- | :--------------------------------------------------------------------                                |
| [acceptJoinResponse](./acceptjoinresponse.md)          | Response to accept participant to the call.                                                           |
| [rejectJoinResponse](./rejectjoinresponse.md)          | Response to reject participant to the call.                                                           |
| [inviteNewBotResponse](./invitenewbotresponse.md)      | Response to request participant joining notification sent out again as an incoming call notification. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [],
  "abstract": true,
  "@odata.type": "microsoft.graph.participantJoiningResponse"
}-->
```json
{
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "participantJoiningResponse resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
