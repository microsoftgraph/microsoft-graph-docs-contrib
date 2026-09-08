---
title: "attributeCollectionRule resource type"
description: "Defines when a progressive profiling flow collects a group of attributes."
author: "Gyanendersinghgithub"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 09/08/2026
---

# attributeCollectionRule resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the operation and conditions used to determine when a progressive profiling flow collects a group of attributes. All conditions within a rule must be satisfied for the rule to apply. Multiple rules are evaluated independently.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|attributeIds|String collection|Required. The identifiers of the attributes to collect. Each value references the **id** property of an [attributeConfiguration](../resources/attributeconfiguration.md) object in the same handler.|
|conditions|[attributeCollectionRuleCondition](../resources/attributecollectionrulecondition.md)|The conditions that must all be satisfied for the rule to run. If this property is `null`, the rule is unconditional.|
|operation|attributeCollectionOperation|Required. The operation to perform for the referenced attributes. The possible values are: `add`, `update`, and `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.attributeCollectionRule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.attributeCollectionRule",
  "operation": "String",
  "conditions": {
    "@odata.type": "microsoft.graph.attributeCollectionRuleCondition"
  },
  "attributeIds": [
    "String"
  ]
}
```
