---
title: "shiftPreferences resource type"
description: "Represents a user's availability to be assigned shifts in the schedule."
ms.localizationpriority: medium
author: "akumar39"
ms.subservice: "teams"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# shiftPreferences resource type

Namespace: microsoft.graph

Represents a user's availability to be assigned shifts in the [schedule](schedule.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get](../api/shiftpreferences-get.md) | [shiftPreferences](shiftpreferences.md) | Read the properties and relationships of a **shiftPreferences** object. |
| [Update](../api/shiftpreferences-put.md) | [shiftPreferences](shiftpreferences.md) | Update a **shiftPreferences** object. |

## Properties

| Property | Type | Description |
|--|--|--|
| availability | [shiftAvailability](shiftavailability.md) collection | Availability of the user to be scheduled for work and its recurrence pattern. |
| createdDateTime | DateTimeOffset | Timestamp corresponding to when the entity was created. |
| id | String | The identifier of the entity. |
| lastModifiedBy | [identitySet](identityset.md) | Identity of the person who last modified the entity. |
| lastModifiedDateTime | DateTimeOffset | Timestamp corresponding to when the entity was last modified. |
| @odata.etag | String | The change key for the entity. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.shiftPreferences",
  "baseType": "microsoft.graph.changeTrackedEntity"
}-->

```json
{
  "availability": [{"@odata.type": "microsoft.graph.shiftAvailability"}]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "shiftPreferences resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
