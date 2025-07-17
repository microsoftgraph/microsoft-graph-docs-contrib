---
author: daspek
description: The ItemActivityTimeSet resource provides information about when an activity on an item took place.
ms.date: 09/14/2017
title: ItemActivityTimeSet
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: sharepoint
---

# ItemActivityTimeSet resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **ItemActivityTimeSet** resource provides information about when an [activity][activity] on an item took place.

[activity]: itemactivity.md

## Properties

| Property         | Type           | Description                                       |
| :--------------- | :------------- | :------------------------------------------------ |
| observedDateTime | DateTimeOffset | When the activity was observed to take place.     |
| recordedDateTime | DateTimeOffset | When the observation was recorded on the service. |

The difference between **observed** and **recorded** times is especially important for offline collaboration scenarios.
If a user comments on a file while offline, the time that they make the comment be set as the **observedDateTime**.
At a later time when the user reconnects to the cloud and the changes get uploaded, that later time is set as the **recordedDateTime**.


## Relationships
None.

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [ ],
  "keyProperty": "id",
  "@type": "microsoft.graph.itemActivityTimeSet",
  "@type.aka": "oneDrive.times",
  "@property.aka": "observedDateTime=observedTime recordedDateTime=recordedTime"
}-->

```json
{
  "observedDateTime": "String (timestamp)",
  "recordedDateTime": "String (timestamp)"
}
```
## Remarks

Item activity records are currently only available on SharePoint and OneDrive for Business.

<!--
{
  "type": "#page.annotation",
  "description": "The ItemActionSet object provides information about an activity that took place on an item.",
  "keywords": "activities,activity,action",
  "section": "documentation",
  "tocPath": "Resources/ItemActionSet",
  "suppressions": []
}
-->
