---
title: "extractSensitivityLabelsResult resource type"
description: "Represents the response format for the extractSensitivityLabels API."
author: "abhishek-microsoft-2021"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# extractSensitivityLabelsResult resource type

Namespace: microsoft.graph

Represents the response format for the [extractSensitivityLabels](../api/driveitem-extractsensitivitylabels.md) API.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|labels|[sensitivityLabelAssignment](./sensitivitylabelassignment.md) collection|List of sensitivity labels assigned to a file.|

## JSON representation
The following JSON representation shows the resource type.
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

