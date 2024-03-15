---
author: "mcm223"
description: "Represents the base identity of a participant or organizer in a callRecord."
title: "participantBase resource type"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "cloud-communications"
---

# participantBase resource type

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the base identity of a participant or organizer in a [callRecord](callrecords-callrecord.md).

Base type of [organizer](callrecords-organizer.md) and [participant](callrecords-participant.md).

## Properties

| Property                | Type                                                                                                   | Description                                                                                      |
|:------------------------|:-------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------|
| id                      | String                                                                                                 | Unique identifier for the call participant.                                                      |
| identity                | [communicationsIdentitySet](communicationsidentityset.md)                                              | The identity of the call participant.                                                            |
| administrativeUnitInfos | [microsoft.graph.callRecords.administrativeUnitInfo](callrecords-administrativeunitinfo.md) collection | List of [administrativeUnitInfo](callrecords-administrativeunitinfo.md) of the call participant. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.callRecords.participantBase",
  "optionalProperties": [
    "id",
    "identity",
    "administrativeUnitInfos"
  ],
  "openType": true
} -->
```json
{
  "id": "String (identifier)",
  "identity": {"@odata.type": "microsoft.graph.communicationsIdentitySet"},
  "administrativeUnitInfos": [{"@odata.type": "microsoft.graph.callRecords.administrativeUnitInfo"}]
}
```

## Related content

For examples that show how to use the **participant** and **organizer** resources, see [callRecord](callrecords-callrecord.md).
