---
title: "teamsAppInstalledEventMessageDetail resource type"
description: "Represents the details of an event message about teamsApp installed."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# teamsAppInstalledEventMessageDetail resource type

Namespace: microsoft.graph

Represents the details of an event message about [teamsApp](../resources/teamsApp.md) installed.
This message is generated when a **teamsApp** is installed in a [channel](../resources/channel.md), a [chat](../resources/chat.md), or a [team](../resources/team.md).


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
  "@odata.type": "microsoft.graph.teamsAppInstalledEventMessageDetail",
  "baseType": "microsoft.graph.eventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsAppInstalledEventMessageDetail",
  "teamsAppId": "String",
  "teamsAppDisplayName": "String",
  "initiator": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```


## Related content
- [Example response for an event message about **teamsApp** installed](/graph/system-messages/#teams-app-installed)
- For more information about other types of events, see [System messages](/graph/system-messages).
