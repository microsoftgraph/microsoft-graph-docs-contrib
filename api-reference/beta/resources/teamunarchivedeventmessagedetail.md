---
title: "teamUnarchivedEventMessageDetail resource type"
description: "Represents details for team unarchived event message."
author: "RamjotSingh"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamUnarchivedEventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details for team unarchived event message.
This message is generated when a team is unarchived.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|
|teamId|String|Unique identifier of the team.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamUnarchivedEventMessageDetail",
  "baseType": "microsoft.graph.eventmessagedetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamUnarchivedEventMessageDetail",
  "teamId": "String",
  "initiator": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```


## See also
- [Example response](/graph/system-messages/#28.-Team-unarchived)
- For more information about other types of events, see [System Messages](/graph/system-messages)