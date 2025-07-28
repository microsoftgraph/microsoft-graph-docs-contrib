---
title: "signInIdentity resource type"
description: "Represents the identity that is signing in"
author: "kvenkit"
ms.date: 07/08/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# signInIdentity resource type

Namespace: microsoft.graph

Represents the identity that is signing in, as defined in [Conditional Access What If evaluation](../api/conditionalaccessroot-evaluate.md). The identity could be that of a user, an guest user, or a single tenant service principal. This resource is an abstract type from which the following types derive:
- [userSignIn](../resources/usersignin.md)
- [servicePrincipalSignIn](../resources/serviceprincipalsignin.md)

## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.signInIdentity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.signInIdentity"
}
```

