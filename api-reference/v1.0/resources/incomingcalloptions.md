---
title: "incomingCallOptions resource type"
description: "Represents a class that contains the options for an incoming call."
author: "satyakonmsft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 10/21/2024
---

# incomingCallOptions resource type

Namespace: microsoft.graph

Represents a class that contains the options for an incoming call.

Inherits from [callOptions](calloptions.md).

## Properties

| Property                            | Type    | Description                                                                                                                   |
|:------------------------------------|:--------|:------------------------------------------------------------------------------------------------------------------------------|
| hideBotAfterEscalation              | Boolean | Indicates whether to hide the app after the call is escalated. Inherited from [callOptions](calloptions.md).                  |
| isContentSharingNotificationEnabled | Boolean | Indicates whether content sharing notifications should be enabled for the call. Inherited from [callOptions](calloptions.md). |
| isDeltaRosterEnabled                | Boolean | Indicates whether delta roster is enabled for the call. Inherited from [callOptions](calloptions.md).                         |
| isInteractiveRosterEnabled          | Boolean | Indicates whether delta roster filtering by participant interactivity is enabled. Inherited from [callOptions](calloptions.md).                         |

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.incomingCallOptions"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.incomingCallOptions",
  "hideBotAfterEscalation": "Boolean",  
  "isContentSharingNotificationEnabled": "Boolean",
  "isDeltaRosterEnabled": "Boolean",
  "isInteractiveRosterEnabled": "Boolean"
}
```
