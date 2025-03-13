---
title: "joinMeetingIdSettings resource type"
description: "Specifies the joinMeetingId, the meeting passcode, and the requirement for the passcode."
author: "yuyaolian-msft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 07/22/2024
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

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.
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
