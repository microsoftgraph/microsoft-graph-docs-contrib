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

Represents a class that contains the options for an outgoing call.

Inherits from [callOptions](calloptions.md).

## Properties

| Property                            | Type    | Description                                                                                                                   |
|:------------------------------------|:--------|:------------------------------------------------------------------------------------------------------------------------------|
| hideBotAfterEscalation              | Boolean | Indicates whether to hide the app after the call is escalated. Inherited from [callOptions](calloptions.md).                  |
| isContentSharingNotificationEnabled | Boolean | Indicates whether content sharing notifications should be enabled for the call. Inherited from [callOptions](calloptions.md). |

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
  "hideBotAfterEscalation": "Boolean",
  "isContentSharingNotificationEnabled": "Boolean"
}
```
