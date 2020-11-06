---
title: "participantLeftNotification resource type"
description: "Contains details on the policy based participant who has left the call"
author: "yizwei"
localization_priority: Normal
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# participantLeftNotification resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Under the [Policy-based recording scenario](/microsoftteams/teams-recording-policy) scenario, when a participant who is managed by the bot call has left the meeting, a `participantLeftNotification` will be sent to the bot to notify the bot with details of the participant left event.

## Properties
| Property       | Type            | Description                                                        |
| -------------- | --------------  | -------------------------------------------                        |
| call           | [call](call.md) | The call object containing detail on the participant joining event |
| participantId  | String          | Id of the participant under policy who has left the meeting        |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [],
  "@odata.type": "microsoft.graph.participantLeftNotification"
}-->
```json
{
  "participantId": "String",
  "call": {"@odata.type": "#microsoft.graph.call"}
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "participantLeftNotification resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

