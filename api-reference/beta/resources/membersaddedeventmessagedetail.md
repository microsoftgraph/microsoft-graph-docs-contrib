---
title: "membersAddedEventMessageDetail resource type"
description: "Represents details for members added event message"
author: "harshnat"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# membersAddedEventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details for members added event message.

This message is generated when members are added to a chat, a channel or a team.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|
|members|[identity](../resources/identity.md) collection|List of members added.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.membersAddedEventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.membersAddedEventMessageDetail",
  "members": [
    {
      "@odata.type": "microsoft.graph.identity"
    }
  ],
  "initiator": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```

