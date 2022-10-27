---
title: "businessScenarioGroupTarget resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# businessScenarioGroupTarget resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [businessScenarioTaskTargetBase](../resources/businessscenariotasktargetbase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|groupId|String|**TODO: Add Description**|
|taskTargetKind|plannerTaskTargetKind|**TODO: Add Description** Inherited from [businessScenarioTaskTargetBase](../resources/businessscenariotasktargetbase.md).The possible values are: `group`, `unknownFutureValue`.|

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
  "taskTargetKind": "String",
  "groupId": "String"
}
```

