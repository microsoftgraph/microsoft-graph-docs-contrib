---
title: "recommendedAction resource type"
description: "Represents recommended actions for a tenant based on the attack simulation and training campaign to improve its security posture."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# recommendedAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [informationprotection-deprecate](../../includes/informationprotection-deprecate.md)]

Represents recommended actions for a tenant based on the attack simulation and training campaign to improve its security posture.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionWebUrl|String|Web URL to the recommended action.|
|potentialScoreImpact|Double|Potential improvement in the tenant security score from the recommended action.|
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
  "potentialScoreImpact": "Double",
  "title": "String"
}
```

