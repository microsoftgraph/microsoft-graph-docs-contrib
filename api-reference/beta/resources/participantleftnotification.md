---
title: "participantLeftNotification resource type"
description: "Contains details about the policy-based participant who has left the call."
author: "yizhenww"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# participantLeftNotification resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains details about the policy-based participant who has left the call.

Under the [Policy-based recording](/microsoftteams/teams-recording-policy) scenario, when a participant who is managed by the bot call has left the meeting, a `participantLeftNotification` will be sent to the bot to notify the bot with details of the participant left event.

## Properties
| Property       | Type            | Description                                                        |
| -------------- | --------------  | -------------------------------------------                        |
| call           | [call](call.md) | The call object that contains details about the participant joining event. |
| participantId  | String          | ID of the participant under the policy who has left the meeting.        |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

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

