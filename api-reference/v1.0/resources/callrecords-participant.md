---
author: "mcm223"
description: "Represents the identity of a participant in a callRecord."
title: "participant resource type"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "cloud-communications"
ms.date: 05/28/2024
---

# participant resource type

Namespace: microsoft.graph.callRecords

Represents the identity of a participant in a [callRecord](callrecords-callrecord.md).

Inherits from [participantBase](callrecords-participantbase.md).

> [!NOTE]
> A known issue related to application identities is associated with this API. For details, see [Known issues](https://developer.microsoft.com/graph/known-issues?search=25794).

## Methods

| Method          | Return Type                                                                                     | Description                                                   |
|:----------------|:------------------------------------------------------------------------------------------------|:--------------------------------------------------------------|
| [List](../api/callrecords-callrecord-list-participants_v2.md)|[microsoft.graph.callRecords.participant](callrecords-participant.md) collection|Get the list of [participant](../resources/callrecords-participant.md) objects associated with a [callRecord](../resources/callrecords-callrecord.md).|

## Properties

| Property | Type                       | Description                                             |
|:---------|:------------------------------|:--------------------------------------------------------|
| id       | String                        | Unique identifier for the call participant. Inherited from [participantBase](callrecords-participantbase.md). |
| identity | [microsoft.graph.communicationsIdentitySet](communicationsidentityset.md) | The identity of the call participant. Inherited from [participantBase](callrecords-participantbase.md). |
| administrativeUnitInfos | [microsoft.graph.callRecords.administrativeUnitInfo](callrecords-administrativeunitinfo.md) collection | List of [administrativeUnitInfo](callrecords-administrativeunitinfo.md) objects for the call participant. Inherited from [participantBase](callrecords-participantbase.md). |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.callRecords.participant",
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

## See also

For examples that show how to use the **participant** resource, see [callRecord](callrecords-callrecord.md).
