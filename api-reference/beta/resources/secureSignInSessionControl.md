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
|isEnabled     |Boolean      | Specifies whether the session control is enabled. |



## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.secureSignInSessionControl",
  "baseType": "microsoft.graph.conditionalAccessSessionControl"
}-->

```json
{
  "isEnabled":true,
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "secureSignInSessionControl resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->