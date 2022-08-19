---
title: "parameter resource type"
description: "*parameter resource type properties"
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# parameter resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A resource type denoting the parameters of workflows created using Lifecycle Workflows.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|name|String|The name of the parameter.|
|values|String collection|The values of the parameter.|
|valueType|String|The value type of the parameter. The possible values are: `enum`, `string`, `int`, `bool`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
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
