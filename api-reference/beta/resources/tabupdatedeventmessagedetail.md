---
title: "tabUpdatedEventMessageDetail resource type"
description: "Represents details for tab updated event message"
author: "harshnat"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# tabUpdatedEventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details for tab updated event message.

This message is generated when a tab is updated in a channel or a chat.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|
|tabId|String|Unique identifier of the tab.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.tabUpdatedEventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tabUpdatedEventMessageDetail",
  "tabId": "String",
  "initiator": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```

