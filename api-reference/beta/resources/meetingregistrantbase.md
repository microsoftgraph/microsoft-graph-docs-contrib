---
title: "meetingRegistrantBase resource type"
description: "Represents a base meeting registrant who enrolled in an online meeting."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
toc.title: Meeting Registrant Base (deprecated)
---

# meetingRegistrantBase resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a base meeting registrant who enrolled in an online meeting.

Base type of [meetingRegistrant](meetingregistrant.md) and [externalMeetingRegistrant](externalmeetingregistrant.md).

> [!TIP]
> This is an abstract type and cannot be used directly. Use the derived type [meetingRegistrant](meetingregistrant.md) or [externalMeetingRegistrant](externalmeetingregistrant.md) instead.

> [!CAUTION]
> The meeting registrant API is deprecated and will stop returning data on **December 12, 2024**. Please use the new [webinar APIs](../resources/virtualeventwebinar.md). For more information, see [Deprecation of the Microsoft Graph meeting registration beta APIs](https://devblogs.microsoft.com/microsoft365dev/deprecation-of-the-microsoft-graph-meeting-registration-beta-apis/).

## Properties

| Property   | Type   | Description                                                         |
|:-----------|:-------|:--------------------------------------------------------------------|
| id         | String | The unique identifier of the registrant. Read-only.                 |
| joinWebUrl | String | A unique web URL for the registrant to join the meeting. Read-only. |

## JSON representation

The following JSON representation shows the resource type.
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
