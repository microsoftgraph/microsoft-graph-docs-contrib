---
title: "recommendedAction resource type"
description: "Represents recommended actions to be undertaken by tenant based on attack simulation and training campaigns to improve its security posture."
author: "Gopal-MSFT"
ms.localizationpriority: Menium
ms.prod: "security"
doc_type: resourcePageType
---

# recommendedAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents recommended actions to be undertaken by tenant based on attack simulation and training campaigns to improve its security posture.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionWebUrl|String|Web url to the recommended action.|
|potentialScoreImpact|Double|Potential improvement in security score of the tenant from the recommended action.|
|title|String|Title of the recommended action.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.recommendedAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.recommendedAction",
  "actionWebUrl": "String",
  "title": "String",
  "potentialScoreImpact": "Double"
}
```

