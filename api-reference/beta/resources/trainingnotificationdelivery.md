---
title: "trainingNotificationDelivery resource type"
description: "**TODO: Add Description**"
author: "ak_graph"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# trainingNotificationDelivery resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|failedMessageDeliveryCount|Int32|**TODO: Add Description**|
|resolvedTargetsCount|Int32|**TODO: Add Description**|
|successfulMessageDeliveryCount|Int32|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.trainingNotificationDelivery"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.trainingNotificationDelivery",
  "resolvedTargetsCount": "Integer",
  "successfulMessageDeliveryCount": "Integer",
  "failedMessageDeliveryCount": "Integer"
}
```

