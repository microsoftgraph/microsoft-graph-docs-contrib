---
title: "parameter resource type"
description: "Represents the allowed arguments that are defined in a taskDefinition for built-in lifecycle workflow tasks."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# parameter resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the allowed arguments that are defined in a [taskDefinition](../resources/identitygovernance-taskdefinition.md) for built-in lifecycle workflow tasks.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|name|String|The name of the parameter.|
|values|String collection|The values of the parameter.|
|valueType|microsoft.graph.identityGovernance.valueType|The value type of the parameter. The possible values are: `enum`, `string`, `int`, `bool`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.parameter"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.parameter",
  "name": "String",
  "values": [
    "String"
  ],
  "valueType": "String"
}
```
