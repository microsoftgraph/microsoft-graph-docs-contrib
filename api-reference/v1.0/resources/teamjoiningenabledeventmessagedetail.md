---
title: "teamJoiningEnabledEventMessageDetail resource type"
description: "Represents the details of an event message about team joining enabled."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# teamJoiningEnabledEventMessageDetail resource type

Namespace: microsoft.graph

Represents the details of an event message about [team](../resources/team.md) joining enabled.
This message is generated when joining is enabled for a **team**.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|
|teamId|String|Unique identifier of the **team**.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamJoiningEnabledEventMessageDetail",
  "baseType": "microsoft.graph.eventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamJoiningEnabledEventMessageDetail",
  "teamId": "String",
  "initiator": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```


## Related content
- [Example response for an event message about **team** joining enabled](/graph/system-messages/#team-joining-enabled)
- For more information about other types of events, see [System messages](/graph/system-messages).
