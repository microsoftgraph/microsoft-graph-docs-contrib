---
author: "mcm223"
description: "Represents the base identity of a call participant."
title: "Participantbase resource type"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: "users"
---
# ParticipantBase resource type

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the base identity of a participant or organizer in a [callRecord](callrecords-callrecord.md) resource. The [participant](callrecords-participant.md) and [organizer](callrecords-organizer.md) types inherit from this type.

## Properties

| Property    | Type                          | Description                                               |
|:------------|:------------------------------|:----------------------------------------------------------|
| id          | String                        | Unique identifier for the call participant.     |
| identity    | [identitySet](identityset.md) | Optional. The identity of the call participant.           |


## JSON representation

The following example is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.callRecords.participantBase",
  "optionalProperties": [
    "id",
    "identity"
  ],
  "openType": true
} -->
```json
{
  "id": "string",
  "identity": {"@odata.type": "microsoft.graph.identitySet"}
}
```

## See also

For examples that show how to use **participant** and **organizer** resources, see [call records](callrecords-callrecord.md).