---
title: "agentSignIn resource type (for conditionalAccess)"
description: "Defines details of the agent identity that is signing in."
author: "kvenkit"
ms.date: 11/03/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# agentSignIn resource type (for conditionalAccess)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines details of the agent identity that is signing in, as defined in [Conditional Access What If evaluation](../api/conditionalaccessroot-evaluate.md).

Inherits from [signInIdentity](../resources/signinidentity.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|agentServicePrincipalId|String|Agent identity object IDs included in the policy.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.agentSignIn"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.agentSignIn",
  "agentServicePrincipalId": "String"
}
```

