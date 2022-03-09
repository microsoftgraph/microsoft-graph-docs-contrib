---
title: "joinMeetingIdMeetingInfo resource type"
description: "The joinMeetingIdMeetingInfo type."
author: "yuyaolian-msft"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# joinMeetingIdMeetingInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Inherits from [meetingInfo](../resources/meetinginfo.md). This is the information that allows you to join an existing meeting with an id and passcode (if requried). This information is obtained with the [Get Online Meetings API](../api/onlinemeeting-get.md).

## Properties

| Property                | Type    | Description                                                   |
| :---------------------- | :------ | :------------------------------------------------------------ |
| joinMeetingId           | String  | The id used to join the meeting.                              |
| passcode                | String  | The passcode used to join the call. Optional.                 |

## JSON representation

The following is a JSON representation of the resource.

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
