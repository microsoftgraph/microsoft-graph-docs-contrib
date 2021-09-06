---
title: "policyBase resource type"
description: "Represents an abstract base type for policy types to inherit from."
ms.localizationpriority: medium
author: "lujiangfeng666"
ms.prod: "identity-and-sign-in"
doc_type: "resourcePageType"
---

# policyBase resource type

Namespace: microsoft.graph

Represents an abstract base type for policy types to inherit from. Inherits from [directoryObject](directoryobject.md).

## Methods

None

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String| Unique identifier for this policy. Read-only. Inherited from [directoryObject](directoryobject.md).|
|description|String| Description for this policy.|
|displayName|String| Display name for this policy. |

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.policyBase",
  "keyProperty": "id"
}-->

```json
{
  "id": "String (identifier)",
  "description": "String",
  "displayName": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "policyBase resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
