---
title: "userTrainingEventInfo resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# userTrainingEventInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description**|
|latestTrainingStatus|trainingStatus|**TODO: Add Description**. Possible values are: `unknown`, `assigned`, `inProgress`, `completed`, `overdue`, `notCompleted`, `unknownFutureValue`.|
|trainingAssignedProperties|[userTrainingContentEventInfo](../resources/usertrainingcontenteventinfo.md)|**TODO: Add Description**|
|trainingCompletedProperties|[userTrainingContentEventInfo](../resources/usertrainingcontenteventinfo.md)|**TODO: Add Description**|
|trainingUpdatedProperties|[userTrainingContentEventInfo](../resources/usertrainingcontenteventinfo.md)|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userTrainingEventInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userTrainingEventInfo",
  "displayName": "String",
  "latestTrainingStatus": "String",
  "trainingAssignedProperties": {
    "@odata.type": "microsoft.graph.userTrainingContentEventInfo"
  },
  "trainingUpdatedProperties": {
    "@odata.type": "microsoft.graph.userTrainingContentEventInfo"
  },
  "trainingCompletedProperties": {
    "@odata.type": "microsoft.graph.userTrainingContentEventInfo"
  }
}
```

