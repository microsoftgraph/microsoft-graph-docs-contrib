---
title: "removedState resource type"
description: "Resource type that contains the deletion reason for the resource."
author: "sasthana"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# removedState resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Resource type that contains the deletion reason for the resource.

## Properties
| Property	     | Type    | Description                                                |
|:---------------|:--------|:-----------------------------------------------------------|
| reason     | String  | The removal reason for the resource.      |

## JSON representation

The following is a JSON representation of the resource.

```json
{
  "@odata.type": "#microsoft.graph.removedState",
  "reason": "String"
}
```

