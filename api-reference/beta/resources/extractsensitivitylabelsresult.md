---
title: "extractSensitivityLabelsResult resource type"
description: "Represents the response format for the extractSensitivityLabels API."
author: "jaLuthra"
ms.localizationpriority: medium
ms.prod: "sharepoint"
doc_type: resourcePageType
---

# extractSensitivityLabelsResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the response format for the [extractSensitivityLabels](../api/driveitem-extractsensitivitylabels.md) API.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|labels|[sensitivityLabelAssignment](./sensitivitylabelassignment.md) collection|List of sensitivity labels assigned to a file.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.extractSensitivityLabelsResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.extractSensitivityLabelsResult",
  "labels": [
    {
      "@odata.type": "microsoft.graph.sensitivityLabelAssignment"
    }
  ]
}
```

