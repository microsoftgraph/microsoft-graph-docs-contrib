---
title: "meetingParticipantInfo resource type"
description: "Information about a participant in a meeting."
author: "ananmishr"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# meetingParticipantInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information about a participant in a meeting.

## Properties

| Property | Type             | Description                 |
| :------- | :-------------------- | :------------------------------ |
| identity | [communicationsIdentitySet](communicationsIdentitySet.md) | Identity information of the participant. Only the **user** property is used for [onlineMeeting](onlinemeeting.md) participants.          |
| upn      | String                        | User principal name of the participant.             |
| role     | [onlineMeetingRole](#onlinemeetingrole-values)     | Specifies the participant's role in the meeting.|

### onlineMeetingRole values

The following table lists the members of an [evolvable enumeration](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations). You must use the `Prefer: include-unknown-enum-members` request header to get the `coorganizer` value in this evolvable enum.

| Value              | Description                                                            |
| ------------------ | ---------------------------------------------------------------------- |
| attendee            | Participant's role is attendee. This value applies to all meetings.   |
| presenter           | Participant's role is presenter. This value applies to meetings with **allowedPresenter** set to `roleIsPresenter`, or a Teams live event. |
| producer            | Participant's role is producer. This value applies to Teams live event only.  |
| coorganizer | Participant's role is co-organizer. This value applies to all meetings except Teams live event. |
| unknownFutureValue | Evolvable enumeration sentinel value. Do not use. |

> [!TIP]
>
> To set the **presenter** role of a meeting attendee when creating or updating an [onlineMeeting](onlinemeeting.md), the value of **allowedPresenters** must also be set to `roleIsPresenter`.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.meetingParticipantInfo"
}-->
```json
{
  "identity": {"@odata.type": "#microsoft.graph.communicationsIdentitySet"},
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


