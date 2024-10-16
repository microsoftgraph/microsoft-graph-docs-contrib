---
title: "externalMeetingRegistration resource type"
description: "Represents external registration details of an online meeting."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
toc.title: External meeting registration (deprecated)
---
# externalMeetingRegistration resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> [!CAUTION]
> The external meeting registration API is deprecated and will stop returning data on **December 12, 2024**. Please use the new [webinar APIs](../resources/virtualeventwebinar.md). For more information, see [Deprecation of the Microsoft Graph meeting registration beta APIs](https://devblogs.microsoft.com/microsoft365dev/deprecation-of-the-microsoft-graph-meeting-registration-beta-apis/).

Represents external registration details of an [onlineMeeting](../resources/onlinemeeting.md).

Inherits from [meetingRegistrationBase](meetingregistrationbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/externalmeetingregistration-post.md)|[externalMeetingRegistration](externalmeetingregistration.md)|Create a new [externalMeetingRegistration](externalmeetingregistration.md) object.|
|[Get](../api/externalmeetingregistration-get.md)|[externalMeetingRegistration](externalmeetingregistration.md)|Read the properties and relationships of an [externalMeetingRegistration](externalmeetingregistration.md) object.|
|[Delete](../api/externalmeetingregistration-delete.md)|None|Delete an [externalMeetingRegistration](externalmeetingregistration.md) object.|

## Properties

| Property          | Type                                       | Description                                 |
|:------------------|:-------------------------------------------|:--------------------------------------------|
| allowedRegistrant | [meetingAudience](#meetingaudience-values) | Specifies who can register for the meeting. Inherited from [meetingRegistrationBase](meetingregistrationbase.md). |

### meetingAudience values

| Value              | Description                                                            |
|--------------------|------------------------------------------------------------------------|
| everyone           | Everyone can register for the meeting.                                 |
| organization       | Everyone in the organizer’s organization can register for the meeting. |
| unknownFutureValue | Evolvable enumeration sentinel value. Do not use.                      |

## Relationships

| Relationship | Type                                                                 | Description                        |
|:-------------|:---------------------------------------------------------------------|:-----------------------------------|
| registrants  | [externalMeetingRegistrant](externalmeetingregistrant.md) collection | Registrants of the online meeting. |

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.externalMeetingRegistration",
  "baseType": "microsoft.graph.meetingRegistrationBase",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.externalMeetingRegistration",
  "allowedRegistrant": "String"
}
```
