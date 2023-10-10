---
author: "mcm223"
description: "Represents the identity of a call participant."
title: "Participant resource type"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: "users"
---
# participant resource type

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the identity of a call or meeting participant in Microsoft Teams or Skype for Business.

## Properties

| Property    | Type                       | Description                                             |
|:---------|:------------------------------|:--------------------------------------------------------|
| id       | String                        | Optional. Unique identifier for the call participant.     |
| identity | [identitySet](identityset.md) | Optional. The identity of the call participant.           |


## JSON representation

The following is a JSON representation of the resource.

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

For examples that show how to use **participant** resources, see [callrecords](callrecords-callrecord.md).