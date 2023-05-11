---
title: "onUserCreateStartHandler resource type"
description: "Represents a step in a multi-event policy defining what happens during user creation"
author: "nanguil"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# onUserCreateStartHandler resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This is a base/abstract class for configuring what to invoke if the onUserCreateStartHandler event resolves to this listener. It represents a step in a multi-event policy that defines what happens during user creation.

This is an abstract complex type from which the [onUserCreateStartExternalUsersSelfServiceSignUp](../resources/onusercreatestartexternalusersselfservicesignup.md) subtype is derived.

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.onUserCreateStartHandler"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onUserCreateStartHandler"
}
```

