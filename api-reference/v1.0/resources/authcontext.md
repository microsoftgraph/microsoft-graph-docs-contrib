---
title: "authContext resource type"
description: "Represents the authentication context protecting the data that the authenticating identity is attempting to access"
author: "kvenkit"
ms.date: 07/08/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# authContext resource type

Namespace: microsoft.graph

Represents the authentication context protecting the data that the authenticating identity is attempting to access, as defined in [Conditional Access What If evaluation](../api/conditionalaccessroot-evaluate.md). Inherits from [signInContext](../resources/signincontext.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationContextValue|String|Supported values are `c1` through `c99`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.authContext"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authContext",
  "authenticationContextValue": "String"
}
```

