---
title: "removedState resource type"
description: "Represents the reason why a participant resource was removed from a roster."
author: "sasthana"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 03/06/2024
---

# removedState resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the reason why a [participant](participant.md) resource was removed from a roster.

## Properties

| Property | Type   | Description                          |
|:---------|:-------|:-------------------------------------|
| reason   | String | The removal reason for the **participant** resource. |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.removedState"
} -->
```json
{
  "@odata.type": "#microsoft.graph.removedState",
  "reason": "String"
}
```
