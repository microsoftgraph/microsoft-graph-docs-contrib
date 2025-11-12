---
title: "callOptions resource type"
description: "Represents an abstract base class that contains the optional features for a call."
author: "satyakonmsft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 10/21/2024
---

# callOptions resource type

Namespace: microsoft.graph

Represents an abstract base class that contains the optional features for a call.

Base type of [incomingCallOptions](../resources/incomingcalloptions.md) and [outgoingCallOptions](../resources/outgoingcalloptions.md).

## Properties

|Property                              |Type                      |Description                                                                        |
|:---                                  |:---                      |:---                                                                               |
| hideBotAfterEscalation               | Boolean                  | Indicates whether to hide the app after the call is escalated.                    |
| isContentSharingNotificationEnabled  | Boolean                  | Indicates whether content sharing notifications should be enabled for the call.   |
| isDeltaRosterEnabled                 | Boolean                  | Indicates whether delta roster is enabled for the call.                           |
| isInteractiveRosterEnabled           | Boolean                  | Indicates whether delta roster filtering by participant interactivity is enabled. |

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.callOptions"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.callOptions",
  "hideBotAfterEscalation": "Boolean",
  "isContentSharingNotificationEnabled": "Boolean",
  "isDeltaRosterEnabled": "Boolean",
  "isInteractiveRosterEnabled": "Boolean"
}
```
