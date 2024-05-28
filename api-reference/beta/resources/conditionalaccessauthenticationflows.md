---
title: "conditionalAccessAuthenticationFlows resource type"
description: "Represents the authentication flows in scope for the policy."
author: "nickludwig"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# conditionalAccessAuthenticationFlows resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the authentication flows in scope for the policy.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|transferMethods|conditionalAccessTransferMethods|Represents the transfer methods in scope for the policy. The possible values are: `none`, `deviceCodeFlow`, `authenticationTransfer`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.conditionalAccessAuthenticationFlows"
}-->
``` json
{
  "transferMethods": "String",
}
```
