---
title: "trainingCampaignReportOverview resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# trainingCampaignReportOverview resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|trainingModuleCompletion|[trainingEventsContent](../resources/trainingeventscontent.md)|**TODO: Add Description**|
|trainingNotificationDeliveryStatus|[trainingNotificationDelivery](../resources/trainingnotificationdelivery.md)|**TODO: Add Description**|
|userCompletionStatus|[userTrainingCompletionSummary](../resources/usertrainingcompletionsummary.md)|**TODO: Add Description**|

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

