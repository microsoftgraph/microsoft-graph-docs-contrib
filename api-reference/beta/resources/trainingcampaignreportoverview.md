---
title: "trainingCampaignReportOverview resource type"
description: "Represents an overview report of a training campaign."
author: "akgraph"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# trainingCampaignReportOverview resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an overview report of a training campaign.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|trainingModuleCompletion|[trainingEventsContent](../resources/trainingeventscontent.md)|Aggregate data of training completion.|
|trainingNotificationDeliveryStatus|[trainingNotificationDelivery](../resources/trainingnotificationdelivery.md)|Aggregate data of training mail delivery over the course of the training campaign.|
|userCompletionStatus|[userTrainingCompletionSummary](../resources/usertrainingcompletionsummary.md)|Aggregate data of users training progress.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.trainingCampaignReportOverview"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.trainingCampaignReportOverview",
  "trainingModuleCompletion": {
    "@odata.type": "microsoft.graph.trainingEventsContent"
  },
  "userCompletionStatus": {
    "@odata.type": "microsoft.graph.userTrainingCompletionSummary"
  },
  "trainingNotificationDeliveryStatus": {
    "@odata.type": "microsoft.graph.trainingNotificationDelivery"
  }
}
```

