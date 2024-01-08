---
title: "meetingRegistrationBase resource type"
description: "Contains information about base meeting registration."
author: "awang119"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# meetingRegistrationBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents base registration details of an online meeting.

Base type of [meetingRegistration](meetingregistration.md) and [externalMeetingRegistration](externalmeetingregistration.md).

> [!TIP]
> This is an abstract type and cannot be used directly. Use the derived type [meetingRegistration](meetingregistration.md) or [externalMeetingRegistration](externalmeetingregistration.md) instead.

## Properties

| Property          | Type                                       | Description                                 |
|:------------------|:-------------------------------------------|:--------------------------------------------|
| allowedRegistrant | [meetingAudience](#meetingaudience-values) | Specifies who can register for the meeting. |

### meetingAudience values

| Value              | Description                                                            |
|--------------------|------------------------------------------------------------------------|
| everyone           | Everyone can register for the meeting.                                 |
| organization       | Everyone in the organizer’s organization can register for the meeting. |
| unknownFutureValue | Evolvable enumeration sentinel value. Do not use.                      |

## Relationships

| Relationship | Type                                                         | Description                        |
|:-------------|:-------------------------------------------------------------|:-----------------------------------|
| registrants  | [meetingRegistrantBase](meetingregistrantbase.md) collection | Registrants of the online meeting. |

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.meetingRegistrationBase",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.meetingRegistrationBase",
  "allowedRegistrant": "String",

  "registrants": [{ "@odata.type": "microsoft.graph.meetingRegistrantBase" }]
}
```
