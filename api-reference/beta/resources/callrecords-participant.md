---
author: "mcm223"
description: "Represents the identity of a participant in a callRecord."
title: "participant resource type"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: "cloud-communications"
---

# participant resource type

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the identity of a participant in a [callRecord](callrecords-callrecord.md).

Inherits from [participantBase](callrecords-participantbase.md).

## Methods

| Method          | Return Type                                                                                     | Description                                                   |
|:----------------|:------------------------------------------------------------------------------------------------|:--------------------------------------------------------------|
| [List participants](../api/callrecords-callrecord-list-participants.md)|[microsoft.graph.callRecords.participant](callrecords-participant.md) collection|Get the list of [participants](../resources/callrecords-participant.md) associated with a [callRecord](../resources/callrecords-callrecord.md).|

## Properties

| Property | Type                       | Description                                             |
|:---------|:------------------------------|:--------------------------------------------------------|
| id       | String                        | Unique identifier for the call participant. Inherited from [participantBase](callrecords-participantbase.md). |
| identity | [identitySet](identityset.md) | The identity of the call participant. Inherited from [participantBase](callrecords-participantbase.md). |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.callRecords.participant",
  "optionalProperties": [
    "id",
    "identity"
  ],
  "openType": true
} -->
```json
{
  "id": "String (identifier)",
  "identity": {"@odata.type": "microsoft.graph.identitySet"}
}
```

## See also

For examples that show how to use the **participant** resource, see [callRecord](callrecords-callrecord.md).
