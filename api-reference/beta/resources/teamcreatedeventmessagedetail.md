---
title: "teamCreatedEventMessageDetail resource type"
description: "Represents the details of an event message about team created."
author: "RamjotSingh"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamCreatedEventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details of an event message about team created.
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
  "@odata.type": "microsoft.graph.teamCreatedEventMessageDetail",
  "baseType": "microsoft.graph.eventMessageDetail"
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


## See also
- [Example response](/graph/system-messages/#20-team-created)
- For more information about other types of events, see [System messages in Microsoft Teams using Microsoft Graph](/graph/system-messages)