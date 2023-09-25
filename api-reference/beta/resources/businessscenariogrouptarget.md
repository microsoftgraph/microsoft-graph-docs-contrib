---
title: "businessScenarioGroupTarget resource type"
description: "Represents a [group](../resources/group.md) which will be used as the target when creating tasks in a [businessScenario](businessscenario.md)."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: "business-scenarios"
doc_type: resourcePageType
---

# businessScenarioGroupTarget resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a [group](../resources/group.md) which will be used as the target when creating tasks in a [businessScenario](businessscenario.md).

Inherits from [businessScenarioTaskTargetBase](../resources/businessscenariotasktargetbase.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|groupId|String|The unique identifier for the group. |
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
