---
title: "federatedIdentityExpression resource type"
description: "Explains claimsMatchingExpression resource type"
author: "nickludwig"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
---

# federatedIdentityExpression resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Explains


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