---
title: "Working with the call records API in Microsoft Graph"
description: "The Microsoft Graph call records API allows you to retrieve usage and diagnostics data for calls and online meetings within your organization."
author: "mcm223"
doc_type: conceptualPageType
ms.subservice: cloud-communications
ms.localizationpriority: high
---

# Working with the call records API in Microsoft Graph

Call records provide usage and diagnostic information about the calls and online meetings that occur within your organization when using Microsoft Teams or Skype for Business. You can use the call records APIs to subscribe to call records, list call records, and look up call records by IDs. A call record is created after a call or meeting ends and the record is retained for 30 days.

The call records API is defined in the OData sub-namespace, `microsoft.graph.callRecords`.

## Key resource types

| Resource | Methods |
| :-- | :-- |
| [callRecord](callrecords-callrecord.md) | [List callRecords](../api/callrecords-cloudcommunications-list-callrecords.md)<br />[Get callRecord](../api/callrecords-callrecord-get.md) |
| [directRoutingLogRow](callrecords-directroutinglogrow.md) | [getDirectRoutingCalls](../api/callrecords-callrecord-getdirectroutingcalls.md)|
| [participant](callrecords-participant.md) | [List participants_v2](../api/callrecords-callrecord-list-participants_v2.md) |
| [pstnCallLogRow](callrecords-pstncalllogrow.md)|[getPstnCalls](../api/callrecords-callrecord-getpstncalls.md) |
| [segment](callrecords-segment.md) | [List sessions](../api/callrecords-callrecord-list-sessions.md)<br />[Get callRecord](../api/callrecords-callrecord-get.md) |
| [session](callrecords-session.md) | [List sessions](../api/callrecords-callrecord-list-sessions.md)<br />[Get callRecord](../api/callrecords-callrecord-get.md) |

## Call record structure

The [callRecord](callrecords-callrecord.md) entity represents a single peer-to-peer call or a group call between multiple [participants](callrecords-participant.md), sometimes referred to as an online meeting.

A peer-to-peer call contains a single [session](callrecords-session.md) between the two participants in the call. Group calls contain one or more **session** entities. In a group call, each **session** is between the participant and a service endpoint.

Each **session** contains one or more [segment](callrecords-segment.md) entities. A **segment** represents a media link between two [endpoints](callrecords-endpoint.md). For most calls, only one **segment** will be present for each **session**, however sometimes there may be one or more intermediate **endpoints**.

![Image of a the data structure representing a complete call record](/graph/images/callrecords-structure.png)

In the diagram above, the numbers denote how many children of each type can be present. For example, a 1..N relationship between a **callRecord** and a **session** means one **callRecord** instance can contain one or more **session** instances. Similarly, a 1..N relationship between a **segment** and a **media** means one **segment** instance can contain one or more [media](callrecords-media.md) streams.

## Related content

- [Webhook subscriptions](/graph/api/resources/webhooks?view=graph-rest-1.0&preserve-view=true)

