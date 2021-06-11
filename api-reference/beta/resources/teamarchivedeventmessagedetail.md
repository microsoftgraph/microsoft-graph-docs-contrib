---
title: "teamArchivedEventMessageDetail resource type"
description: "Represents details for team archived event message"
author: "harshnat"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamArchivedEventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details for team archived event message.

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
  "@odata.type": "microsoft.graph.teamArchivedEventMessageDetail"
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

