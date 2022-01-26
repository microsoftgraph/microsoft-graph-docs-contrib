---
title: "joinMeetingIdSettings resource type"
description: "Specifies the joinMeetingId and the meeting passcode, as well as the passcode requirement."
author: "yuyaolian"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# joinMeetingIdSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies the joinMeetingId and the meeting passcode, as well as the passcode requirement.

## Properties

| Property            | Type      | Description                                                     |
|:--------------------|:----------|:----------------------------------------------------------------|
| isPasscodeRequired  | Boolean   | Indicates whether a passcode is required to join a meeting when using joinMeetingId. |
| joinMeetingId       | String    | The meeting ID entered by user to join a meeting.  |
| passcode            | String    | The passcode to join a meeting.                    |

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.broadcastMeetingCaptionSettings"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.joinMeetingIdSettings",
  "isPasscodeRequired": "Boolean",
  "joinMeetingId": "String",
  "passcode": "String"
}
```
