---
title: "trainingNotificationDelivery resource type"
description: "Contains aggregate data about training mail delivery over the course of the training campaign."
author: "akgraph"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# trainingNotificationDelivery resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains aggregate data about training mail delivery over the course of the training campaign.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|failedMessageDeliveryCount|Int32|The number of users to whom mails couldn't be delivered.|
|resolvedTargetsCount|Int32|The number of users whose email address was successfully resolved from target users.|
|successfulMessageDeliveryCount|Int32|The number of users who received a mail while the training campaign was in the "in progress" state.|

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

