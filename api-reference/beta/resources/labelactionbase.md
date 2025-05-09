---
title: "labelActionBase resource type"
description: "Abstract base type for actions associated with a sensitivity label, like applying encryption or content markings."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# labelActionBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Abstract base type for defining actions that are executed when a sensitivity label is applied. Derived types specify concrete actions such as applying encryption, adding headers/footers/watermarks, or protecting groups/sites. Found in the `labelActions` collection of [sensitivityLabel](../resources/sensitivitylabel.md) and [matchingLabel](../resources/matchinglabel.md).

## Properties

| Property  | Type    | Description                                                                    |
| :-------- | :------ | :----------------------------------------------------------------------------- |
| isEnabled | Boolean | Indicates if this specific action is enabled for the label. *Note: Hidden in CSDL.* |
| name      | String  | The name of the action (for example, "Encrypt", "AddHeader").                         |

## Relationships

None.

## JSON representation

The following JSON representation shows the complex type. Note that this is an abstract type and won't be instantiated directly. Derived types specify the concrete action properties.
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
  // Properties are defined in derived types like encryptContent, markContent, etc.
}
```
