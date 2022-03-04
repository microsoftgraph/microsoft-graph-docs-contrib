---
title: "callOptions resource type"
description: "An abstract base class that contains the options for a call".
author: "yoren"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# callOptions resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract base class that contains the options for a call.

## Properties
|Property                 |Type                      |Description                                                                        |
|:---                     |:---                      |:---                                                                               |
|isContentSharingNotificationEnabled   |Boolean                   |The value that indicates whether content sharing notifications should be enabled for the call.    |

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.callOptions"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.callOptions",
  "isContentSharingNotificationEnabled": "Boolean"
}
```
