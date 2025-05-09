---
title: "labelPolicy resource type"
description: "Represents a reference to a sensitivity label policy that includes a specific sensitivity label."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: complexTypePageType
---

# labelPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a reference to a sensitivity label policy. This is typically used within the properties of a [sensitivityLabel](../resources/sensitivitylabel.md) to indicate which policies publish or include that label.

## Properties

| Property | Type   | Description                                      |
| :------- | :----- | :----------------------------------------------- |
| id       | String | The unique identifier of the label policy.       |
| name     | String | The display name of the label policy.            |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.labelPolicy",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.labelPolicy",
  "id": "String",
  "name": "String"
}
```