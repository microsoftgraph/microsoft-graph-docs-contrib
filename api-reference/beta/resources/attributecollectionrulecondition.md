---
title: "attributeCollectionRuleCondition resource type"
description: "Defines the conditions for a progressive profiling attribute collection rule."
author: "Gyanendersinghgithub"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 09/08/2026
---

# attributeCollectionRuleCondition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the conditions that must be satisfied for a progressive profiling attribute collection rule to run. All conditions in the object are evaluated together.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|attributeConditions|[attributeCondition](../resources/attributecondition.md) collection|Required. The conditions evaluated against user attributes.|
|identityProviders|String collection|Required. The identity providers for which the rule applies. An empty collection applies the rule to all identity providers.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.attributeCollectionRuleCondition"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.attributeCollectionRuleCondition",
  "identityProviders": [
    "String"
  ],
  "attributeConditions": [
    {
      "@odata.type": "microsoft.graph.attributeCondition"
    }
  ]
}
```
