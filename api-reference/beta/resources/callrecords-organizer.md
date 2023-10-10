---
author: "mcm223"
description: "Represents the identity of a call organizer."
title: "Organizer resource type"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: "users"
---
# organizer resource type

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the identity of a call or meeting organizer in a [callRecord](callrecords-callrecord.md) resource.

## Properties

| Property    | Type                       | Description                                             |
|:---------|:------------------------------|:--------------------------------------------------------|
| id       | String                        | Optional. Unique identifier for the call organizer.     |
| identity | [identitySet](identityset.md) | Optional. The identity of the call organizer.           |


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.callRecords.organizer",
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

For examples that show how to use **organizer** resources, see [callrecords](callrecords-callrecord.md).