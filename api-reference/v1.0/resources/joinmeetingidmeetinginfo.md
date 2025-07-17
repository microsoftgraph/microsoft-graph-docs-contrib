---
title: "joinMeetingIdMeetingInfo resource type"
description: "Contains information that allows you to join an existing meeting with a joinMeetingId and a passcode."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# joinMeetingIdMeetingInfo resource type

Namespace: microsoft.graph

Contains information that allows you to join an existing meeting with a **joinMeetingId** and a **passcode** (if required). You can retrieve these properties from the [Get onlineMeeting](../api/onlinemeeting-get.md) API.

Inherits from [meetingInfo](../resources/meetinginfo.md).

## Properties

| Property                | Type    | Description                                                   |
| :---------------------- | :------ | :------------------------------------------------------------ |
| joinMeetingId           | String  | The ID used to join the meeting.                              |
| passcode                | String  | The passcode used to join the meeting. Optional.              |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "@odata.type": "microsoft.graph.joinMeetingIdMeetingInfo"
}-->
```json
{
    "joinMeetingId": "String",
    "passcode": "String"
}
```
