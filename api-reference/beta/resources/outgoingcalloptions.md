---
title: "outgoingCallOptions resource type"
description: "Represents a class that contains the options for an outgoing call."
author: "satyakonmsft"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# outgoingCallOptions resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a class that contains the options for an outgoing call.
Inherited from [callOptions](calloptions.md).

## Properties
|Property                 |Type                      |Description                                                                        |
|:---                     |:---                      |:---                                                                               |
|isContentSharingNotificationEnabled   |Boolean                   |The value that indicates whether content sharing notifications should be enabled for the call. Inherited from [callOptions](calloptions.md).    |

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.outgoingCallOptions"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.outgoingCallOptions",
  "isContentSharingNotificationEnabled": "Boolean"
}
```
