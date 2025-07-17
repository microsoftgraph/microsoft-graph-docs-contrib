---
title: "teamsAppUpgradedEventMessageDetail resource type"
description: "Represents the details of an event message about teamsApp upgraded."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# teamsAppUpgradedEventMessageDetail resource type

Namespace: microsoft.graph

Represents the details of an event message about [teamsApp](../resources/teamsApp.md) upgraded.
This message is generated when a **teamsApp** is upgraded in a [channel](../resources/channel.md), a [chat](../resources/chat.md), or a [team](../resources/team.md).


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|
|teamsAppDisplayName|String|Display name of the **teamsApp**.|
|teamsAppId|String|Unique identifier of the **teamsApp**.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamsAppUpgradedEventMessageDetail",
  "baseType": "microsoft.graph.eventMessageDetail"
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


## Related content
- [Example response for an event message about **teamsApp** upgraded](/graph/system-messages/#teams-app-upgraded)
- For more information about other types of events, see [System messages](/graph/system-messages).
