---
author: "mcm223"
description: "Represents the identity of a call or meeting organizer in a callRecord."
title: "organizer resource type"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "cloud-communications"
---

# organizer resource type

Namespace: microsoft.graph.callRecords

Represents the identity of a call or meeting organizer in a [callRecord](callrecords-callrecord.md). 

Inherits from [participantBase](callrecords-participantbase.md).

## Properties

| Property | Type                       | Description                                             |
|:---------|:------------------------------|:--------------------------------------------------------|
| id       | String                        | Unique identifier for the call organizer. Inherited from [participantBase](callrecords-participantbase.md). |
| identity | [microsoft.graph.communicationsIdentitySet](communicationsidentityset.md) | The identity of the call organizer. Inherited from [participantBase](callrecords-participantbase.md). |
| administrativeUnitInfos | [microsoft.graph.callRecords.administrativeUnitInfo](callrecords-administrativeunitinfo.md) collection | The list of [administrativeUnitInfo](callrecords-administrativeunitinfo.md) objects for the call participant. Inherited from [participantBase](callrecords-participantbase.md). |

## Methods

None.

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

## See also

For examples that show how to use the **organizer** resource, see [callRecord resource type](callrecords-callrecord.md).
