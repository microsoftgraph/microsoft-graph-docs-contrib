---
title: "businessScenarioTaskTargetBase resource type"
description: "An abstract type that represents a base object for all targets that can be specified for creating tasks for a scenario."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.subservice: "business-scenarios"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# businessScenarioTaskTargetBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that represents a base object for all targets that can be specified for creating tasks for a scenario.

Base type of [businessScenarioGroupTarget](businessscenariogrouptarget.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|taskTargetKind|plannerTaskTargetKind|Represents the kind of the target. The possible values are: `group`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
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
