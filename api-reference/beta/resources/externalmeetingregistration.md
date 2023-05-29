---
title: "externalMeetingRegistration resource type"
description: "Contains information about external meeting registration."
author: "awang119"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---
# externalMeetingRegistration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents external registration details of an online meeting.

Inherits from [meetingRegistrationBase](meetingregistrationbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create externalMeetingRegistration](../api/externalmeetingregistration-post.md)|[externalMeetingRegistration](externalmeetingregistration.md)|Create a new [externalMeetingRegistration](externalmeetingregistration.md) object.|
|[Get externalMeetingRegistration](../api/externalmeetingregistration-get.md)|[externalMeetingRegistration](externalmeetingregistration.md)|Read the properties and relationships of an [externalMeetingRegistration](externalmeetingregistration.md) object.|
|[Delete externalMeetingRegistration](../api/externalmeetingregistration-delete.md)|None|Delete an [externalMeetingRegistration](externalmeetingregistration.md) object.|

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

The following is a JSON representation of the resource.
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
  "allowedRegistrant": "String",

  "registrants": [{ "@odata.type": "microsoft.graph.externalMeetingRegistrant" }]
}
```
