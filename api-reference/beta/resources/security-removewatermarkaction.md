---
title: "removeWatermarkAction resource type"
description: "Represents an action that specifies the details on the content watermark to be removed from the information, if applicable."
author: "tommoser"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# removeWatermarkAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an action that specifies the details on the content watermark to be removed from the information, if applicable. The [evaluateApplication](../api/security-sensitivitylabel-evaluateapplication.md), [evaluateClassificationResults](../api/security-sensitivitylabel-evaluateclassificationresults.md), or [evaluateRemoval](../api/security-sensitivitylabel-evaluateremoval.md) APIs might return the **removeWatermarkAction** if the watermark is to be removed as a result of updating or removing the label. The action instructs the consuming application to remove the specific UI element that contains the previously-applicable content watermark.

Inherits from [informationProtectionAction](../resources/security-informationprotectionaction.md).

## Properties
| Property       | Type              | Description                                            |
| :------------- | :---------------- | :----------------------------------------------------- |
| uiElementNames | String collection | The name of the UI element of watermark to be removed. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.removeWatermarkAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.removeWatermarkAction",
  "uiElementNames": [
    "String"
  ]
}
```

