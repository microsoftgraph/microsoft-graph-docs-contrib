---
title: "callRecord resource type"
description: "The callRecord type"
localization_priority: Normal
author: "stephenjust"
ms.prod: "cloud-communications"
doc_type: "resourcePageType"
---

# callRecord resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a single peer-to-peer call or a group call between multiple participants, sometimes referred to as an online meeting.

Namespace: microsoft.graph.callRecords

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get callRecord](../api/callrecords-callrecord-get.md) | [callRecord](callrecords-callrecord.md) | Read properties and relationships of callRecord object. |
## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|endDateTime|DateTimeOffset|UTC time when the last user left the call. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|id|String|Unique identifier for the call record. Read-only.|
|joinWebUrl|String|Meeting URL associated to the call. May not be available for a peerToPeer call record type.|
|lastModifiedDateTime|DateTimeOffset|UTC time when the call record was created. The DatetimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|modalities|string collection|List of all the modalities used in the call. Possible values are: `unknown`, `audio`, `video`, `videoBasedScreenSharing`, `data`, `screenSharing`, `unknownFutureValue`.|
|organizer|[identitySet](identityset.md)|The organizing party's identity.|
|participants|[identitySet](identityset.md) collection|List of distinct identities involved in the call.|
|startDateTime|DateTimeOffset|UTC time when the first user joined the call. The DatetimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|type|string|Indicates the type of the call. Possible values are: `unknown`, `groupCall`, `peerToPeer`, `unknownFutureValue`.|
|version|Int64|Monotonically increasing version of the call record. Higher version call records with the same id includes additional data compared to the lower version.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|sessions|[microsoft.graph.callRecords.session](callrecords-session.md) collection|List of sessions involved in the call. Peer-to-peer calls typically only have one session, whereas group calls typically have at least one session per participant. Read-only. Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.callRecords.callRecord",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
    "id": "e523d2ed-2966-4b6b-925b-754a88034cc5",
    "version": 1,
    "type": "peerToPeer",
    "modalities": [
        "audio"
    ],
    "lastModifiedDateTime": "2020-02-25T19:00:24.582757Z",
    "startDateTime": "2020-02-25T18:52:21.2169889Z",
    "endDateTime": "2020-02-25T18:52:46.7640013Z",
    "organizer": {
        "user": {
            "id": "821809f5-0000-0000-0000-3b5136c0e777",
            "displayName": "Abbie Wilkins",
            "tenantId": "dc368399-474c-4d40-900c-6265431fd81f"
        }
    },
    "participants": [
        {
            "user": {
                "id": "821809f5-0000-0000-0000-3b5136c0e777",
                "displayName": "Abbie Wilkins",
                "tenantId": "dc368399-474c-4d40-900c-6265431fd81f"
            }
        },
        {
            "user": {
                "id": "f69e2c00-0000-0000-0000-185e5f5f5d8a",
                "displayName": "Owen Franklin",
                "tenantId": "dc368399-474c-4d40-900c-6265431fd81f"
            }
        }
    ],
    "joinWebUrl": null
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