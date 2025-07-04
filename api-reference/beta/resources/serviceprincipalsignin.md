---
title: "servicePrincipalSignIn resource type"
description: "Represents the service principal that is signing in"
author: "kvenkit"
ms.date: 03/21/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# servicePrincipalSignIn resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the service principal that is signing in, as defined in [Conditional Access What If evaluation](../api/conditionalaccessroot-evaluate.md). Inherits from [signInIdentity](../resources/signinidentity.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|servicePrincipalId|String|`appId` of the service principal that is signing in.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.servicePrincipalSignIn"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.servicePrincipalSignIn",
  "servicePrincipalId": "String"
}
```

