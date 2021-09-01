---
title: "assignedTrainingInfo resource type"
description: "Represents assigned training in attack simulation and training campaign."
author: "gopkr"
localization_priority: Normal
ms.prod: "security"
doc_type: resourcePageType
---

# assignedTrainingInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents assigned training in attack simulation and training campaign.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignedUserCount|Int32|Count of users assigned the training.|
|completedUserCount|Int32|Count of users completed the training.|
|displayName|String|Display name of the training.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.assignedTrainingInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.assignedTrainingInfo",
  "assignedUserCount": "Integer",
  "completedUserCount": "Integer",
  "displayName": "String"
}
```

