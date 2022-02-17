---
title: "extractSensitivityLabelsResult resource type"
description: "represents response format for [extractSensitivityLabels][(../api/driveitem-extractsensitivitylabels.md)] API"
author: "jaLuthra"
ms.localizationpriority: medium
ms.prod: "sharepoint"
doc_type: resourcePageType
---

# extractSensitivityLabelsResult resource type

Namespace: microsoft.graph

The **extractSensitivityLabelsResult** complex type represents response format for [extractSensitivityLabels][(../api/driveitem-extractsensitivitylabels.md)] API.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|labels|[sensitivityLabelAssignment](./sensitivitylabelassignment.md) collection|List of sensitivityLabel assigned to a given file.|

## Methods

| Common task                                                                  | HTTP method                                                        |
|:-----------------------------------------------------------------------------| :------------------------------------------------------------------|
| [Extract sensitivity labels][(../api/driveitem-extractsensitivitylabels.md)] | `POST /drives/{drive-id}/items/{item-id}/extractSensitivityLabels` |

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

