---
title: "teamDescriptionUpdatedEventMessageDetail resource type"
description: "Represents details for team description updated event message"
author: "harshnat"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamDescriptionUpdatedEventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details for team description updated event message.

This message is generated when team's description is updated.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|
|teamDescription|String|Updated description for the team.|
|teamId|String|Unique identifier of the team.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamDescriptionUpdatedEventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamDescriptionUpdatedEventMessageDetail",
  "teamId": "String",
  "teamDescription": "String",
  "initiator": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```

