---
title: "federatedIdentityExpression resource type"
description: "Enables configuration for flexible federated identity credential matching through the claimsMatchingExpression property of the federatedIdentityCredential resource type."
author: "nickludwig"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
---

# federatedIdentityExpression resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Enables the use of a restricted expression language for flexible matching of federated identity credentials to workload scenarios. Primarily, this resource type allows the specification of wildcard-based expressions within **claimsMatchingExpression** property of [federatedIdentityCredential resource type](../resources/federatedidentitycredential.md) > **value** property. For more information on supported patterns and scenarios, visit the [flexible federated identity credentials documentation](https://aka.ms/flexiblefic).  


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