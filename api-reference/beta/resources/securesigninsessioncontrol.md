---
title: "secureSignInSessionControl resource type"
description: "Session control to require sign in sessions to be bound to a device."
ms.localizationpriority: medium
author: "paulgarn"
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# secureSignInSessionControl resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Session control to require sign in sessions to be bound to a device. Inherits from [conditionalAccessSessionControl](conditionalaccesssessioncontrol.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|isEnabled     |Boolean      | Specifies whether the session control is enabled. Inherited from [conditionalAccessSessionControl](conditionalaccesssessioncontrol.md). |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.secureSignInSessionControl"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.secureSignInSessionControl",
  "isEnabled": "Boolean"
}
```
