---
title: "teamCreatedEventMessageDetail resource type"
description: "Represents details for team created event message"
author: "harshnat"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamCreatedEventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details for team created event message.

This message is generated when a team is created.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|
|teamDescription|String|Description for the team.|
|teamDisplayName|String|Display name of the team.|
|teamId|String|Unique identifier of the team.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamCreatedEventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamCreatedEventMessageDetail",
  "teamId": "String",
  "teamDisplayName": "String",
  "teamDescription": "String",
  "initiator": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```

