---
title: "trainingNotificationDelivery resource type"
description: "Aggregate data of training mail delivery over the course of the training campaign"
author: "akgraph"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# trainingNotificationDelivery resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Aggregate data of training mail delivery over the course of the training campaign

## Properties
|Property|Type|Description|
|:---|:---|:---|
|failedMessageDeliveryCount|Int32|count of users for which mails could not delivered|
|resolvedTargetsCount|Int32|count of users whose email address have been successfully resolved from target users|
|successfulMessageDeliveryCount|Int32|count of users who have received a mail while the trainingcampaign is "inprogress" state|

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

