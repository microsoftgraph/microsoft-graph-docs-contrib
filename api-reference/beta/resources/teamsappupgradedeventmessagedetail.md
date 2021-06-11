---
title: "teamsAppUpgradedEventMessageDetail resource type"
description: "Represents details for teams app upgraded event message."
author: "harshnat"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamsAppUpgradedEventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details for teams app upgraded event message.

This message is generated when a teamsApp is upgraded in a channel, a chat or a team.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|
|teamsAppDisplayName|String|Name of the teamsApp.|
|teamsAppId|String|Unique identifier of the teamsApp.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamsAppUpgradedEventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsAppUpgradedEventMessageDetail",
  "teamsAppId": "String",
  "teamsAppDisplayName": "String",
  "initiator": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```

