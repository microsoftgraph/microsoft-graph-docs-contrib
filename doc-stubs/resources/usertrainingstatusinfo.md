---
title: "userTrainingStatusInfo resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# userTrainingStatusInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignedDateTime|DateTimeOffset|**TODO: Add Description**|
|completionDateTime|DateTimeOffset|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|trainingStatus|trainingStatus|**TODO: Add Description**. Possible values are: `unknown`, `assigned`, `inProgress`, `completed`, `overdue`, `notCompleted`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userTrainingStatusInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userTrainingStatusInfo",
  "assignedDateTime": "String (timestamp)",
  "completionDateTime": "String (timestamp)",
  "trainingStatus": "String",
  "displayName": "String"
}
```

