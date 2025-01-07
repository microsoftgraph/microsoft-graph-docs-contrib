---
title: "outgoingCallOptions resource type"
description: "Represents a class that contains the options for an outgoing call."
author: "satyakonmsft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 08/29/2024
---

# outgoingCallOptions resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a class that contains the options for an outgoing call.

Inherits from [callOptions](calloptions.md).

## Properties

| Property                            | Type    | Description                                                                                                                   |
|:------------------------------------|:--------|:------------------------------------------------------------------------------------------------------------------------------|
| hideBotAfterEscalation              | Boolean | Indicates whether to hide the app after the call is escalated. Inherited from [callOptions](calloptions.md).                  |
| isContentSharingNotificationEnabled | Boolean | Indicates whether content sharing notifications should be enabled for the call. Inherited from [callOptions](calloptions.md). |
| isDeltaRosterEnabled                | Boolean | Indicates whether delta roster is enabled for the call. Inherited from [callOptions](calloptions.md).                         |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.outgoingCallOptions"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.outgoingCallOptions",
  "hideBotAfterEscalation": "Boolean",
  "isContentSharingNotificationEnabled": "Boolean",
  "isDeltaRosterEnabled": "Boolean"
}
```
