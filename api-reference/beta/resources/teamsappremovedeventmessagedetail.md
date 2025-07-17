---
title: "teamsAppRemovedEventMessageDetail resource type"
description: "Represents the details of an event message about teamsApp removed."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# teamsAppRemovedEventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details of an event message about a **teamsApp** removal.
This message is generated when a **teamsApp** is removed from a channel, a chat, or a team.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|
|teamsAppDisplayName|String|Display name of the **teamsApp**.|
|teamsAppId|String|Unique identifier of the **teamsApp**.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamsAppRemovedEventMessageDetail",
  "baseType": "microsoft.graph.eventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsAppRemovedEventMessageDetail",
  "teamsAppId": "String",
  "teamsAppDisplayName": "String",
  "initiator": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```


## Related content
- [Example response for an event message about teamsApp removed](/graph/system-messages/#teams-app-removed)
- For more information about other types of events, see [System messages](/graph/system-messages).
