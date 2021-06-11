---
title: "callStartedEventMessageDetail resource type"
description: "Represents details for call started event message."
author: "harshnat"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# callStartedEventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details for call started event message.

This message is generated when a call has started.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|callId|String|Unique identifier of the call.|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.callStartedEventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.callStartedEventMessageDetail",
  "callId": "String",
  "initiator": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```

