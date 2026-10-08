---
title: "applicationContext resource type"
description: "Represents the application that the authenticating identity is attempting to access, as defined in the Conditional Access What If evaluation."
author: "kvenkit"
ms.date: 07/08/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# applicationContext resource type

Namespace: microsoft.graph

Represents the application that the authenticating identity is attempting to access, as defined in [Conditional Access What If evaluation](../api/conditionalaccessroot-evaluate.md). Inherits from [signInContext](../resources/signincontext.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|includeApplications|String collection|Collection of **appId** values for the applications.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.applicationContext"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.applicationContext",
  "includeApplications": [
    "String"
  ]
}
```

