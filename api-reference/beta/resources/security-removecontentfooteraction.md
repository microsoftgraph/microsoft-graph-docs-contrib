---
title: "removeContentFooterAction resource type"
description: "Represents an action that specifies the details on the content footer to be removed from the information, if applicable."
author: "tommoser"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# removeContentFooterAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an action that specifies the details on the content footer to be removed from the information, if applicable. The [evaluateApplication](../api/security-sensitivitylabel-evaluateapplication.md), [evaluateClassificationResults](../api/security-sensitivitylabel-evaluateclassificationresults.md), or [evaluateRemoval](../api/security-sensitivitylabel-evaluateremoval.md) APIs might return the **removeContentFooterAction** if the footer is to be removed as a result of updating or removing the label. The action instructs the consuming application to remove the specific UI element that contains the previously-applicable content footer.

Inherits from [informationProtectionAction](../resources/security-informationprotectionaction.md).

## Properties
| Property       | Type              | Description                                                |
| :------------- | :---------------- | :--------------------------------------------------------- |
| uiElementNames | String collection | The name of the UI element of the footer to be removed. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.removeContentFooterAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.removeContentFooterAction",
  "uiElementNames": [
    "String"
  ]
}
```

