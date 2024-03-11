---
title: "callRecord resource type"
description: "Represents a single peer-to-peer call or a group call between multiple participants, sometimes referred to as an online meeting."
ms.localizationpriority: medium
author: "mcm223"
ms.prod: "cloud-communications"
doc_type: "resourcePageType"
---

# callRecord resource type

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a single peer-to-peer call or a group call between multiple participants, sometimes referred to as an online meeting. A call record is created after a call or meeting ends.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List callRecords](../api/callrecords-cloudcommunications-list-callrecords.md) | [microsoft.graph.callRecords.callRecord](callrecords-callrecord.md) collection | Get the list of [callRecord](../resources/callrecords-callrecord.md) objects and their properties. |
| [Get callRecord](../api/callrecords-callrecord-get.md) | [microsoft.graph.callRecords.callRecord](callrecords-callrecord.md) | Read the properties and relationships of a **callRecord** object. |
| [getPstnCalls](../api/callrecords-callrecord-getpstncalls.md) | [microsoft.graph.callRecords.pstnCallLogRow](callrecords-pstncalllogrow.md) collection | List **pstnCallLogRow** objects in a call record. |
| [getDirectRoutingCalls](../api/callrecords-callrecord-getdirectroutingcalls.md) | [microsoft.graph.callRecords.directRoutingLogRow](callrecords-directroutinglogrow.md) collection| List **directRoutingLogRow** objects for a call record. |
| [getPstnBlockedUsersLog](../api/callrecords-callrecord-getpstnblockeduserslog.md) | [microsoft.graph.callRecords.pstnBlockedUsersLogRow](callrecords-pstnblockeduserslogrow.md) collection| Get the log of users who are blocked/unblocked from making public switched telephone network (PSTN) calls in Microsoft Teams as a collection of **pstnBlockedUsersLogRow** entries. |
| [getPstnOnlineMeetingDialoutReport](../api/callrecords-callrecord-getpstnonlinemeetingdialoutreport.md) | [microsoft.graph.callRecords.pstnOnlineMeetingDialoutReport](callrecords-pstnonlinemeetingdialoutreport.md) collection| Get aggregated report of the usage and money spent for the audio conferencing dial-out service as a collection of **pstnOnlineMeetingDialoutReport** entries. |
| [getSmsLog](../api/callrecords-callrecord-getsmslog.md) | [microsoft.graph.callRecords.smsLogRow](callrecords-smslogrow.md) collection| Get the log of a sent/received SMS as a collection of **smsLogRow** entries. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|endDateTime|DateTimeOffset|UTC time when the last user left the call. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|id|String|Unique identifier for the call record. Read-only.|
|joinWebUrl|String|Meeting URL associated to the call. May not be available for a peerToPeer call record type.|
|lastModifiedDateTime|DateTimeOffset|UTC time when the call record was created. The DatetimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|modalities|modality collection|List of all the modalities used in the call. Possible values are: `unknown`, `audio`, `video`, `videoBasedScreenSharing`, `data`, `screenSharing`, `unknownFutureValue`.|
|startDateTime|DateTimeOffset|UTC time when the first user joined the call. The DatetimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|type|callType|Indicates the type of the call. Possible values are: `unknown`, `groupCall`, `peerToPeer`, `unknownFutureValue`.|
|version|Int64|Monotonically increasing version of the call record. Higher version call records with the same ID include additional data compared to the lower version.|
|organizer (deprecated)|[identitySet](identityset.md)|The organizing party's identity. The **organizer** property is deprecated and will stop returning data on June 30, 2026. Going forward, use the **organizer_v2** relationship.|
|participants (deprecated)|[identitySet](identityset.md) collection|List of distinct identities involved in the call. Limited to 130 entries. The **participants** property is deprecated and will stop returning data on June 30, 2026. Going forward, use the **participants_v2** relationship.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|organizer_v2|[microsoft.graph.callRecords.organizer](callrecords-organizer.md)|Identity of the organizer of the call. This relationship is expanded by default in **callRecord** methods.|
|participants_v2|[microsoft.graph.callRecords.participant](callrecords-participant.md) collection|List of distinct participants in the call.|
|sessions|[microsoft.graph.callRecords.session](callrecords-session.md) collection|List of sessions involved in the call. Peer-to-peer calls typically only have one session, whereas group calls typically have at least one session per participant. Read-only. Nullable.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.callRecords.callRecord",
  "keyProperty": "id"
}-->

```json
{
  "endDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "joinWebUrl": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "modalities": ["string"],
  "organizer": {"@odata.type": "microsoft.graph.identitySet"},
  "participants": [{"@odata.type": "microsoft.graph.identitySet"}],
  "startDateTime": "String (timestamp)",
  "type": "String",
  "version": "Int64"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "callRecord resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


