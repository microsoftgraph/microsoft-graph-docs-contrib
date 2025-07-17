---
title: "propertyToEvaluate resource type"
description: "Defines the name and the value of the property."
ms.localizationpriority: medium
author: "yuhko-msft"
ms.reviewer: "mbhargav, khotzteam, aadgroupssg"
ms.subservice: "entra-groups"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# propertyToEvaluate resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the name and the value of the property.

## Properties

| Property      | Type   | Description                  |
| :------------ | :----- | :--------------------------- |
| propertyName  | String | Provides the property name.  |
| propertyValue | String | Provides the property value. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.propertyToEvaluate",
  "baseType": null
}-->

```json
{
  "propertyName": "String",
  "propertyValue": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "propertyToEvaluate resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
