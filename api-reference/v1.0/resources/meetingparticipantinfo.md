---
title: "meetingParticipantInfo resource type"
description: "Information about a participant in a meeting."
author: "ananmishr"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# meetingParticipantInfo resource type

Namespace: microsoft.graph

Information about a participant in a meeting.

## Properties

| Property | Type                          | Description                                                                         |
| :------- | :---------------------------- | :---------------------------------------------------------------------------------- |
| identity | [identitySet](identityset.md) | Identity information of the participant.                                            |
| role     | [onlineMeetingRole](#onlinemeetingrole-values)     | Specifies the participant's role in the meeting.|
| upn      | String                        | User principal name of the participant.                                             |

### onlineMeetingRole values

The following table lists the members of an [evolvable enumeration](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations). Use the `Prefer: include-unknown-enum-members` request header to get the following values in this evolvable enum: `producer`, `coorganizer`.

| Value              | Description                                                            |
| ------------------ | ---------------------------------------------------------------------- |
| attendee            | Participant's role is attendee. This value applies to all meetings.   |
| presenter           | Participant's role is presenter. This value applies to meetings with **allowedPresenter** set to `roleIsPresenter`, or a Teams live event. |
| producer            | Participant's role is producer. This value applies to Teams live event only.  |
| coorganizer | Participant's role is co-organizer. This value applies to all meetings except Teams live event. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

> [!TIP]
>
> To set the  **presenter** role of a meeting attendee when creating or updating an [onlineMeeting](onlinemeeting.md), the value of **allowedPresenters** must also be set to `roleIsPresenter`.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.meetingParticipantInfo"
}-->
```json
{
  "identity": {"@odata.type": "#microsoft.graph.identitySet"},
  "upn": "String",
  "role": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "meetingParticipantInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
