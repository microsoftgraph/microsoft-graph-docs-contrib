---
title: "assignedTrainingInfo resource type"
description: "Represents assignment information of a training in an attack simulation and training campaign."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# assignedTrainingInfo resource type

Namespace: microsoft.graph

Represents assignment information of a training in an attack simulation and training campaign.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignedUserCount|Int32|Number of users who were assigned the training in an attack simulation and training campaign.|
|completedUserCount|Int32|Number of users who completed the training in an attack simulation and training campaign.|
|displayName|String|Display name of the training in an attack simulation and training campaign.|

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
  "assignedUserCount": "Int32",
  "completedUserCount": "Int32",
  "displayName": "String"
}
```
