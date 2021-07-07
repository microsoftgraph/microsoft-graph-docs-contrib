---
title: "teamArchivedEventMessageDetail resource type"
description: "Represents the details of an event message about team archived."
author: "RamjotSingh"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamArchivedEventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details of an event message about team archived.
This message is generated when a team is archived.


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
  "@odata.type": "microsoft.graph.teamArchivedEventMessageDetail",
  "baseType": "microsoft.graph.eventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamArchivedEventMessageDetail",
  "teamId": "String",
  "initiator": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```


## See also
- [Example response](/graph/system-messages/#19-team-archived)
- For more information about other types of events, see [System messages in Microsoft Teams using Microsoft Graph](/graph/system-messages)