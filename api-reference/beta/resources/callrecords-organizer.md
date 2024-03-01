---
author: "mcm223"
description: "Represents the identity of a call or meeting organizer in a callRecord."
title: "organizer resource type"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: "cloud-communications"
---

# organizer resource type

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the identity of a call or meeting organizer in a [callRecord](callrecords-callrecord.md).

Inherits from [participantBase](callrecords-participantbase.md).

## Properties

| Property                | Type                                                                                                   | Description                                                                                                                                                      |
|:------------------------|:-------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id                      | String                                                                                                 | Unique identifier for the call organizer. Inherited from [participantBase](callrecords-participantbase.md).                                                      |
| identity                | [communicationsIdentitySet](communicationsidentityset.md)                                              | The identity of the call organizer. Inherited from [participantBase](callrecords-participantbase.md).                                                            |
| administrativeUnitInfos | [microsoft.graph.callRecords.administrativeUnitInfo](callrecords-administrativeunitinfo.md) collection | List of [administrativeUnitInfo](callrecords-administrativeunitinfo.md) of the call organizer. Inherited from [participantBase](callrecords-participantbase.md). |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.callRecords.organizer",
  "optionalProperties": [
    "id",
    "identity",
    "administrativeUnitInfos"
  ],
  "openType": true
} -->
```json
{
  "id": "String (identity)",
  "identity": {"@odata.type": "microsoft.graph.communicationsIdentitySet"},
  "administrativeUnitInfos": [{"@odata.type": "microsoft.graph.callRecords.administrativeUnitInfo"}]
}
```

## Related content

For examples that show how to use the **organizer** resource, see [callRecord](callrecords-callrecord.md).
