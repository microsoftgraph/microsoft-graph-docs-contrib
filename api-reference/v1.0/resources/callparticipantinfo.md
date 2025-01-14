---
title: "callParticipantInfo resource type"
description: "Represents the details for a call participant."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# callParticipantInfo resource type

Namespace: microsoft.graph

Represents the details for a call participant.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|participant|[identitySet](../resources/identityset.md)|Identity of the call participant.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.callParticipantInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.callParticipantInfo",
  "participant": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```

