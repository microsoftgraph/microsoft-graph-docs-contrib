---
title: "recommendedAction resource type"
description: "Represents recommended actions for a tenant based on the attack simulation and training campaign to improve its security posture."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# recommendedAction resource type

Namespace: microsoft.graph

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
The following JSON representation shows the resource type.
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
