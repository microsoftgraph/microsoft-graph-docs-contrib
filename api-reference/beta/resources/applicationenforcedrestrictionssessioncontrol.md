---
title: "applicationEnforcedRestrictionsSessionControl resource type"
description: "Session control to enforce application restrictions."
ms.localizationpriority: medium
author: "sureshja"
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# applicationEnforcedRestrictionsSessionControl resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Session control to enforce application restrictions. Inherit from [Conditional Access Session Control](conditionalaccesssessioncontrol.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|isEnabled     |Boolean      | Specifies whether the session control is enabled or not. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.applicationEnforcedRestrictionsSessionControl",
  "baseType": "microsoft.graph.conditionalAccessSessionControl"
}-->

```json
{
  "isEnabled": true
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "applicationEnforcedRestrictionsSessionControl resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


