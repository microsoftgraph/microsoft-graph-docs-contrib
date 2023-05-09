---
title: "lobbyBypassSettings resource type"
description: "Specifies which participants can bypass the meeting lobby."
author: "awang119"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# lobbyBypassSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies which participants can bypass the meeting lobby.

## Properties

| Property              | Type    | Description                                                         |
| --------------------- | ------- | ------------------------------------------------------------------- |
| scope                 | [lobbyBypassScope](#lobbybypassscope-values)  | Specifies the type of participants that are automatically admitted into a meeting, bypassing the lobby. Optional.|
| isDialInBypassEnabled | Boolean | Specifies whether or not to always let dial-in callers bypass the lobby. Optional. |

### lobbyBypassScope values

The following table lists the members of an [evolvable enumeration](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations). You must use the `Prefer: include-unknown-enum-members` request header to get the following values in this evolvable enum: `invited`, `organizationExcludingGuests`.

| Value                    | Description     |
| ------------------------ | --------------------------------------------------- |
| organizer | Only the organizer is admitted into the meeting and bypassing the lobby. All other participants are placed in the meeting lobby. |
| organization | Only the participants from the same company **and guests** are admitted into the meeting and bypassing the lobby. All other participants are placed in the meeting lobby. |
| organizationAndFederated | Only the participants from the same company or trusted organization and guests are admitted into the meeting and bypassing the lobby. All other participants are placed in the meeting lobby. |
| everyone | Everyone is admitted into the meeting. No participants are placed in the meeting lobby. |
| invited | Only people the organizer invites are admitted into the meeting and bypassing the lobby. All other participants are placed in the meeting lobby. |
| organizationExcludingGuests |  Only the participants from the same company are admitted into the meeting and bypassing the lobby. All other participants are placed in the meeting lobby. |
| unknownFutureValue | Evolvable enumeration sentinel value. Do not use. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [],
  "@odata.type": "microsoft.graph.lobbyBypassSettings"
}-->
```json
{
  "scope": "organizer | organization | organizationAndFederated | everyone | unknownFutureValue",
  "isDialInBypassEnabled": "Boolean",
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "lobbyBypassSettings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
