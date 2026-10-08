---
title: "processingError resource type"
description: "Represents an error encountered during content processing or policy evaluation, indicating if it's transient or permanent."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# processingError resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an error encountered during content processing or policy evaluation, indicating if it's transient or permanent.

Inherits from [classificationError](../resources/classificationerror.md).

## Properties

| Property  | Type                                                                                               | Description                                                                                      |
| :-------- | :------------------------------------------------------------------------------------------------- | :----------------------------------------------------------------------------------------------- |
| errorType | microsoft.graph.security.contentProcessingErrorType  | Indicates whether the error is considered transient (potentially resolvable by retry) or permanent. Possible values are `transient`, `permanent`, `unknownFutureValue`.  Inherits from [classificationError](../resources/classificationerror.md). |


## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.processingError",
  "baseType": "microsoft.graph.classificationError",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.processingError",
  "code": "String",
  "message": "String",
  "target": "String",
  "innerError": {
    "@odata.type": "microsoft.graph.classificationInnerError"
  },
  "details": [
    { "@odata.type": "microsoft.graph.classifcationErrorBase" }
  ],
  "errorType": "String"
}
```
