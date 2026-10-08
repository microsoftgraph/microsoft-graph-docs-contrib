---
title: "signInContext resource type"
description: "Represents the context of the authentication event as defined in the Conditional Access What If evaluation."
author: "kvenkit"
ms.date: 07/08/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# signInContext resource type

Namespace: microsoft.graph

Represents the context of the sign-in as defined in [Conditional Access What If evaluation](../api/conditionalaccessroot-evaluate.md). The context could involve accessing an application, performing a specific user action, or accessing data protected by an authentication context.

This resource is an abstract type from which the following types derive:
- [applicationContext](../resources/applicationcontext.md)
- [authContext](../resources/authcontext.md)
- [userActionContext](../resources/useractioncontext.md)

## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.signInContext"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.signInContext"
}
```

