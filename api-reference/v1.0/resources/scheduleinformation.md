---
title: "scheduleInformation resource type"
description: "Represents the availability of a user, distribution list, or resource for a specified time period."
ms.localizationpriority: medium
author: "iamgirishck"
ms.subservice: "teams"
doc_type: resourcePageType
---

# scheduleInformation resource type

Namespace: microsoft.graph

Represents the availability of a user, distribution list, or resource (room or equipment) for a specified time period.

## Properties
| Property       | Type    |Description|
|:---------------|:--------|:----------|
|availabilityView |String |Represents a merged view of availability of all the items in `scheduleItems`. The view consists of time slots. Availability during each time slot is indicated with: `0`= free or working elswhere, `1`= tentative, `2`= busy, `3`= out of office.<br><br>**Note:** Working elsewhere is set to `0` instead of `4` for backward compatibility. For details, see the [Q&A](/answers/questions/309571/working-elsewhere-in-getschedules-availabilityview) and [Exchange 2007 and Exchange 2010 do not use the WorkingElsewhere value](/openspecs/exchange_server_protocols/ms-oxwscdata/e5ec9563-0491-486d-9bec-50585fa2a2c6#Appendix_A_117).|
|error |[freeBusyError](freebusyerror.md) |Error information from attempting to get the availability of the user, distribution list, or resource. |
|scheduleId |String |An SMTP address of the user, distribution list, or resource, identifying an instance of **scheduleInformation**. |
|scheduleItems |[scheduleItem](scheduleitem.md) collection |Contains the items that describe the availability of the user or resource. |
|workingHours |[workingHours](workinghours.md) |The days of the week and hours in a specific time zone that the user works. These are set as part of the user's [mailboxSettings](mailboxsettings.md).|


## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.scheduleInformation"
}-->

```json
{
  "availabilityView": "String",
  "error": {"@odata.type": "microsoft.graph.freeBusyError"},
  "scheduleId": "String",
  "scheduleItems": [{"@odata.type": "microsoft.graph.scheduleItem"}],
  "workingHours": {"@odata.type": "microsoft.graph.workingHours"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "scheduleInformation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}
-->

