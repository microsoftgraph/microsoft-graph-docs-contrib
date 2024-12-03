---
title: "federatedIdentityExpression resource type"
description: "Explains claimsMatchingExpression resource type to enable Flexible FIC matching"
author: "nickludwig"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
ms.date: 12/03/2024
---

# federatedIdentityExpression resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The `claimsMatchingExpression` resource type enables the use of a restricted expression language for more flexible matching of federated identity credentials to workload scenarios. Primarily, this resource type allows the specification of wildcard-based expressions within `claimsMatchingExpression`'s `value` property. For more information on support patterns and scenarios, please visit our flexible federated identity credentials (documentation)[https://aka.ms/flexiblefic].  


## Properties
|Property|Type|Description|
|:---|:---|:---|
|languageVersion|Int32|Indicated the language version to be used. Should always be set to 1.|
|value|String|Indicates the configured expression.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.federatedIdentityExpression"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.federatedIdentityExpression",
  "languageVersion": "Integer",
  "value": "String"
}
```