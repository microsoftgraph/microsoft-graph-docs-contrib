---
title: "labelActionBase resource type"
description: "Abstract base type for actions associated with a sensitivity label, like applying encryption or content markings."
author: "kylemar"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# labelActionBase resource type

Namespace: microsoft.graph

Abstract base type for actions associated with a sensitivity label, like applying encryption or content markings.

## Properties

| Property  | Type    | Description                                                                    |
| :-------- | :------ | :----------------------------------------------------------------------------- |
| name      | String  | The name of the action (for example, "Encrypt", "AddHeader").                         |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type. An abstract type that isn't instantiated. Derived types specify the concrete action properties.
<!-- {
  "blockType": "resource",
  "abstract": true,
  "@odata.type": "microsoft.graph.labelActionBase",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.labelActionBase",
  "name": "String",
  "isEnabled": "Boolean"
}
```
