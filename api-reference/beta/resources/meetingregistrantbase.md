---
title: "meetingRegistrantBase resource type"
description: "Represents a base meeting registrant who has enrolled in an online meeting."
author: "awang119"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# meetingRegistrantBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a base meeting registrant who has enrolled in an online meeting.

Base type of [meetingRegistrant](meetingregistrant.md) and [externalMeetingRegistrant](externalmeetingregistrant.md).

> [!TIP]
> This is an abstract type and cannot be used directly. Use the derived type [meetingRegistrant](meetingregistrant.md) or [externalMeetingRegistrant](externalmeetingregistrant.md) instead.

## Properties

| Property   | Type   | Description                                                         |
|:-----------|:-------|:--------------------------------------------------------------------|
| id         | String | The unique identifier of the registrant. Read-only.                 |
| joinWebUrl | String | A unique web URL for the registrant to join the meeting. Read-only. |

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.meetingRegistrantBase",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.meetingRegistrantBase",
  "id": "String (identifier)",
  "joinWebUrl": "String"
}
```
