---
title: "simulationReport resource type"
description: "Represents a report of an attack simulation and training campaign."
author: "Gopal-MSFT"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# simulationReport resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a report of an attack simulation and training campaign, including an overview and users of the campaign.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|overview|[simulationReportOverview](../resources/simulationreportoverview.md)|Overview of an attack simulation and training campaign.|
|simulationUsers|[userSimulationDetails](../resources/usersimulationdetails.md) collection|Represents users of a tenant and their online actions in an attack simulation and training campaign.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.simulationReport"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.simulationReport",
  "overview": {
    "@odata.type": "microsoft.graph.simulationReportOverview"
  },
  "simulationUsers": [
    {
      "@odata.type": "microsoft.graph.userSimulationDetails"
    }
  ]
}
```

