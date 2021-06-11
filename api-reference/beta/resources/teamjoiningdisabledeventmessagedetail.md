---
title: "teamJoiningDisabledEventMessageDetail resource type"
description: "Represents details for team joining disabled event message"
author: "harshnat"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamJoiningDisabledEventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details for team joining disabled event message.

This message is generated when joining is disabled for a team.


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
  "@odata.type": "microsoft.graph.teamJoiningDisabledEventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamJoiningDisabledEventMessageDetail",
  "teamId": "String",
  "initiator": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```

