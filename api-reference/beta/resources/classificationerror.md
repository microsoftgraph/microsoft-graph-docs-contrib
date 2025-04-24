---
title: "classificationError resource type"
toc.title: "classificationError resource type(preview)"
description: "Represents a detailed error object, potentially containing multiple nested errors, encountered during classification or policy evaluation."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# classificationError resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a detailed error object, potentially containing multiple nested errors, encountered during classification or policy evaluation. It inherits from [classifcationErrorBase](../resources/classifcationerrorbase.md) and can include a collection of nested errors providing further details.

## Properties

| Property | Type                                                                                                       | Description                                                   |
| :------- | :--------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------ |
| details  | [classifcationErrorBase](../resources/classifcationerrorbase.md) collection | A collection of more specific errors that contribute to the overall error. |

Inherits properties from [classifcationErrorBase](../resources/classifcationerrorbase.md).

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.classificationError",
  "baseType": "microsoft.graph.classifcationErrorBase",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.classificationError",
  "code": "String",
  "message": "String",
  "target": "String",
  "innerError": {
    "@odata.type": "microsoft.graph.classificationInnerError"
  },

  // classificationError properties
  "details": [
    {
      "@odata.type": "microsoft.graph.classifcationErrorBase"
    }
  ]
}
```
