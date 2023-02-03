---
title: "joinMeetingIdSettings resource type"
description: "Specifies the joinMeetingId, the meeting passcode, and the requirement for the passcode."
author: "yuyaolian-msft"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# joinMeetingIdSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies the **joinMeetingId**, the meeting passcode, and the requirement for the passcode for an online meeting.

## Properties

| Property            | Type      | Description                                   |
|:--------------------|:----------|:----------------------------------------------|
| isPasscodeRequired  | Boolean   | Indicates whether a passcode is required to join a meeting when using **joinMeetingId**. Optional. |
| joinMeetingId       | String    | The meeting ID to be used to join a meeting. Optional. Read-only. |
| passcode            | String    | The passcode to join a meeting.  Optional. Read-only. |
## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.joinMeetingIdSettings"
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
