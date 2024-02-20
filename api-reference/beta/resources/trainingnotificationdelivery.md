---
title: "trainingNotificationDelivery resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
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

