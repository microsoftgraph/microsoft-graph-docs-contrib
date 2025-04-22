---
title: "processingError"
toc.title: "processingError (preview)"
description: "Represents an error encountered during content processing or policy evaluation, indicating if it's transient or permanent."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: complexTypePageType
---

# processingError complex type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an error encountered during content processing or policy evaluation, indicating if it's transient or permanent. Specifically within the context of the `processContent` and `processContentAsync` actions. It includes standard error details and indicates whether the error is likely transient or permanent. Inherits from [classificationError](../resources/classificationerror.md). Found within the `processingErrors` collection of [processContentResponse](../resources/processcontentresponse.md).

## Properties

| Property  | Type                                                                                               | Description                                                                                      |
| :-------- | :------------------------------------------------------------------------------------------------- | :----------------------------------------------------------------------------------------------- |
| errorType | [contentProcessingErrorType](../resources/contentprocessingerrortype.md) | Indicates whether the error is considered transient (potentially resolvable by retry) or permanent. |

Inherits properties from [classificationError](../resources/classificationerror.md).

## Relationships

None.

## JSON representation

The following JSON representation shows the complex type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.processingError",
  "baseType": "microsoft.graph.classificationError",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.processingError",
  // Inherited properties from classificationError
  "code": "String",
  "message": "String",
  "target": "String",
  "innerError": {
    "@odata.type": "microsoft.graph.classificationInnerError"
  },
  "details": [
    { "@odata.type": "microsoft.graph.classifcationErrorBase" }
  ],

  // processingError properties
  "errorType": "String"
}
```
