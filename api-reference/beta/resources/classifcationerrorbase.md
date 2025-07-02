---
title: "classifcationErrorBase resource type"
description: "Abstract base type for representing errors that occur during data classification, label evaluation, or policy processing."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# classifcationErrorBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Abstract base type for representing errors that occur during data classification, label evaluation, or policy processing. 

Use [classificationError](../resources/classificationerror.md) for specific error details.

## Properties

| Property   | Type  | Description |
| :--------- | :----------------------------------- | :----------------------------------------------------------------------------- |
| code       | String   | A service-defined error code string.                                           |
| innerError | [classificationInnerError](../resources/classificationinnererror.md) | Contains more specific, potentially internal error details.                    |
| message    | String      | A human-readable representation of the error.                                  |
| target     | String   | The target of the error (for example, the specific property or item causing the issue). |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type. 

>**Note:** This is an abstract type and won't be instantiated directly.
<!-- {
  "blockType": "resource",
  "abstract": true,
  "@odata.type": "microsoft.graph.classifcationErrorBase",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.classifcationErrorBase",
  "code": "String",
  "message": "String",
  "target": "String",
  "innerError": {
    "@odata.type": "microsoft.graph.classificationInnerError"
  }
}
```
