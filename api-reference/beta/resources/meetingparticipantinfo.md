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
| identity | [identitySet](identityset.md) | Identity information of the participant.           |
| upn      | String                        | User principal name of the participant.             |
| role     | [onlineMeetingRole](#onlineMeetingRole-values)     | Specifies the participant's role in the meeting.|

### onlineMeetingRole values

| Value              | Description                                                            |
| ------------------ | ---------------------------------------------------------------------- |
| attendee            | Participant's role is attendee. This value applies to all meetings.   |
| presenter           | Participant's role is presenter. This value applies to meetings with **allowedPresenter** set to `roleIsPresenter`, or a Teams live event. |
| producer            | Participant's role is producer. This value applies to Teams live event only.  |
| unknownFutureValue | Evolvable enumeration sentinel value. Do not use. |
| coorganizer* | Participant's role is co-organizer. This value applies to all meetings except Teams live event. |

[!NOTE]
> \* To receive this value in the response, you'll need to include an HTTP header `Prefer: include-unknown-enum-members` in your request. Refer to [Microsoft Graph best practices page](https://docs.microsoft.com/en-us/graph/best-practices-concept?context=graph%2Fapi%2F1.0&view=graph-rest-1.0&WT.mc_id=M365-MVP-5001530#handling-future-members-in-evolvable-enumerations) for more details.
>

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


