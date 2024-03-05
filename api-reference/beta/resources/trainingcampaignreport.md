---
title: "trainingCampaignReport resource type"
description: "Represents a report of a training campaign, including an overview and a list of the users who participated in the campaign."
author: "akgraph"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# trainingCampaignReport resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a report of a training campaign, including an overview and a list of the users who participated in the campaign.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|campaignUsers|[userSimulationDetails](../resources/usersimulationdetails.md) collection|The overview of the attack simulation and training campaign.|
|overview|[trainingCampaignReportOverview](../resources/trainingcampaignreportoverview.md)|The tenant users and their online actions in a training campaign.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.trainingCampaignReport"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.trainingCampaignReport",
  "overview": {
    "@odata.type": "microsoft.graph.trainingCampaignReportOverview"
  },
  "campaignUsers": [
    {
      "@odata.type": "microsoft.graph.userSimulationDetails"
    }
  ]
}
```

