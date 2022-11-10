---
title: "businessScenarioGroupTarget resource type"
description: "**TODO: Add Description**"
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# businessScenarioGroupTarget resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents targeting a [group](../resources/group.md) for a creating tasks in a scenario.

Inherits from [businessScenarioTaskTargetBase](../resources/businessscenariotasktargetbase.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|groupId|String|The unique identifier for the group. Required.|
|taskTargetKind|plannerTaskTargetKind|Represents the kind of the target. The possible values are: `group`, `unknownFutureValue`. The value of this property will be `group`. Inherited from [businessScenarioTaskTargetBase](../resources/businessscenariotasktargetbase.md).|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.businessScenarioGroupTarget"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.businessScenarioGroupTarget",
  "groupId": "String",
  "taskTargetKind": "String"
}
```
