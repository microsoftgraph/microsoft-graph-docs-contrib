---
title: "trainingCampaignReport resource type"
description: "**TODO: Add Description**"
author: "akgraph"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# trainingCampaignReport resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|campaignUsers|[userSimulationDetails](../resources/usersimulationdetails.md) collection|**TODO: Add Description**|
|overview|[trainingCampaignReportOverview](../resources/trainingcampaignreportoverview.md)|**TODO: Add Description**|

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

