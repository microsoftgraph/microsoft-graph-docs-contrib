---
title: "signInFrequencySessionControl resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# signInFrequencySessionControl resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [conditionalAccessSessionControl](../resources/conditionalaccesssessioncontrol.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationType|signInFrequencyAuthenticationType|**TODO: Add Description**. The possible values are: `primaryAndSecondaryAuthentication`, `secondaryAuthentication`, `unknownFutureValue`.|
|frequencyInterval|signInFrequencyInterval|**TODO: Add Description**. The possible values are: `timeBased`, `everyTime`, `unknownFutureValue`.|
|isEnabled|Boolean|**TODO: Add Description** Inherited from [conditionalAccessSessionControl](../resources/conditionalaccesssessioncontrol.md).|
|type|signinFrequencyType|**TODO: Add Description**. The possible values are: `days`, `hours`.|
|value|Int32|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.signInFrequencySessionControl"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.signInFrequencySessionControl",
  "isEnabled": "Boolean",
  "authenticationType": "String",
  "frequencyInterval": "String",
  "type": "String",
  "value": "Integer"
}
```

