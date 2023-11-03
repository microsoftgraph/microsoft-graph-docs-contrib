---
author: "mcm223"
description: "Represents the identity of a call participant."
title: "Participant resource type"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: "users"
---
# Participant resource type

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the identity of a participant in a [callRecord](callrecords-callrecord.md) resource. Inherits from the [participantBase](callrecords-participantbase.md) type.

## Methods
| Method          | Return Type                                                                                     | Description                                                   |
|:----------------|:------------------------------------------------------------------------------------------------|:--------------------------------------------------------------|
| [List participants](../api/callrecords-participant-list.md)|[microsoft.graph.callRecords.participant](callrecords-participant.md) collection|Retrieve the list of participants associated with a [callRecord](callrecords-callrecord.md) object.|


## Properties

| Property    | Type                          | Description                                               |
|:------------|:------------------------------|:----------------------------------------------------------|
| id          | String                        | Unique identifier for the call participant.     |
| identity    | [identitySet](identityset.md) | Optional. The identity of the call participant.           |


## JSON representation

The following example is a JSON representation of the resource.

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
  "id": "string",
  "identity": {"@odata.type": "microsoft.graph.identitySet"}
}
```

## See also

For examples that show how to use **participant** resource, see [call records](callrecords-callrecord.md).