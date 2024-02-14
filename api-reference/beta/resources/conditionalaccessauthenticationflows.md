---
title: "conditionalAccessAuthenticationFlows resource type"
description: "Represents authentication flows included in the policy scope."
ms.localizationpriority: medium
author: "ludwignick"
ms.reviewer: conditionalaccesspm
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# conditionalAccessAuthenticationFlows resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents authentication flows included in the policy scope.

## Properties

| Property        | Type                             | Description                                                                                                                                          |
|:----------------|:---------------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------|
| transferMethods | conditionalAccessTransferMethods | Transfer methods in scope for the policy. Possible values are `deviceCodeFlow`, `authenticationTransfer`, or `deviceCodeFlow,authenticationTransfer` |

## Relationships

None.

## JSON Representation

The following is a JSON representation of the resource.

```json
{
    "transferMethods": "String"
}
```
