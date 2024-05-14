---
title: "removedState resource type"
description: "Represents the reason why a participant resource was removed from a roster."
author: "sasthana"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

# removedState resource type

Namespace: microsoft.graph

Represents the reason why a [participant](participant.md) resource was removed from a roster.

## Properties

| Property | Type   | Description                          |
|:---------|:-------|:-------------------------------------|
| reason   | String | The removal reason for the **participant** resource. |

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
