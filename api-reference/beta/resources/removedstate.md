---
title: "removedState resource type"
description: "Represents the deletion reason for a participant resource from a roster."
author: "sasthana"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# removedState resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the deletion reason for a [participant](participant.md) resource from a roster.

## Properties

| Property | Type   | Description                          |
|:---------|:-------|:-------------------------------------|
| reason   | String | The removal reason for the **participant** resource. |

## JSON representation

The following is a JSON representation of the resource.

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
