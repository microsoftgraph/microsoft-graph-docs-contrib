---
title: "teamDescriptionUpdatedEventMessageDetail resource type"
description: "Represents the details of an event message about an updated team description."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# teamDescriptionUpdatedEventMessageDetail resource type

Namespace: microsoft.graph

Represents the details of an event message about an updated [team](../resources/team.md) description.
This message is generated when a **team's** description is updated.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|
|teamDescription|String|The updated description for the **team**.|
|teamId|String|Unique identifier of the **team**.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamDescriptionUpdatedEventMessageDetail",
  "baseType": "microsoft.graph.eventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamDescriptionUpdatedEventMessageDetail",
  "teamId": "String",
  "teamDescription": "String",
  "initiator": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```


## Related content
- [Example response for an event message about an updated **team** description](/graph/system-messages/#team-description-updated)
- For more information about other types of events, see [System messages](/graph/system-messages).
