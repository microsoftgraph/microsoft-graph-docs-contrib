---
title: "businessScenarioTaskTargetBase resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# businessScenarioTaskTargetBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the base object for all targets that can be specified for creating tasks for a scenario.
This is an abstract type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|taskTargetKind|plannerTaskTargetKind|The target kind. The possible values are: `group`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.businessScenarioTaskTargetBase"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.businessScenarioTaskTargetBase",
  "taskTargetKind": "String"
}
```

