---
title: "authenticationStrength resource type"
description: "The custom authentication strength enforced in a Conditional Access policy"
author: "besiler"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# authenticationStrength resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The custom authentication strength enforced in a Conditional Access policy. 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationStrengthId|String|Identifier of the authentication strength.|
|displayName|String|The name of the authentication strength.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.authenticationStrength"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationStrength",
  "authenticationStrengthId": "String",
  "displayName": "String"
}
```

