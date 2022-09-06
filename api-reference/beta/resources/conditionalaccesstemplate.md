---
title: "conditionalAccessTemplate resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# conditionalAccessTemplate resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List conditionalAccessTemplates](../api/conditionalaccessroot-list-templates.md)|[conditionalAccessTemplate](../resources/conditionalaccesstemplate.md) collection|Get a list of the [conditionalAccessTemplate](../resources/conditionalaccesstemplate.md) objects and their properties.|
|[Get conditionalAccessTemplate](../api/conditionalaccesstemplate-get.md)|[conditionalAccessTemplate](../resources/conditionalaccesstemplate.md)|Read the properties and relationships of a [conditionalAccessTemplate](../resources/conditionalaccesstemplate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|**TODO: Add Description**|
|details|[conditionalAccessPolicyDetail](../resources/conditionalaccesspolicydetail.md)|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|name|String|**TODO: Add Description**|
|scenarios|templateScenarios|**TODO: Add Description**.The possible values are: `new`, `secureFoundation`, `zeroTrust`, `remoteWork`, `protectAdmins`, `emergingThreats`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.conditionalAccessTemplate",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.conditionalAccessTemplate",
  "id": "String (identifier)",
  "name": "String",
  "description": "String",
  "scenarios": "String",
  "details": {
    "@odata.type": "microsoft.graph.conditionalAccessPolicyDetail"
  }
}
```

