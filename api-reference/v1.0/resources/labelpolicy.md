---
title: "labelPolicy resource type"
description: "Represents a reference to a sensitivity label policy that includes a specific sensitivity label."
author: "kylemar"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# labelPolicy resource type

Namespace: microsoft.graph

Represents a reference to a sensitivity label policy that includes a specific sensitivity label.

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
