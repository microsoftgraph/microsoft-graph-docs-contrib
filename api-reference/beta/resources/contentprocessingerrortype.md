---
title: "contentProcessingErrorType enum type"
toc.title: "contentProcessingErrorType enum type (preview)"
description: "Specifies whether an error encountered during content processing is transient or permanent."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: enumPageType
---

# contentProcessingErrorType enum type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies whether an error encountered during content processing is transient or permanent. Specifically whether it's likely to be resolved by retrying the operation (transient) or if it represents a fundamental issue (permanent). Used in [processingError](../resources/processingerror.md).

## Members

| Member             | Value | Description                                                |
| :----------------- | :---- | :--------------------------------------------------------- |
| transient          | 0     | The error is likely temporary; retrying might succeed.     |
| permanent          | 1     | The error is persistent; retrying is unlikely to succeed. |
| unknownFutureValue | 2     | Don't use. |

## JSON representation

The following JSON representation shows the enum type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.contentProcessingErrorType"
}-->
``` json
{
  "@odata.type": "#microsoft.graph.contentProcessingErrorType",
  "members": [
    { "name": "transient", "value": 0 },
    { "name": "permanent", "value": 1 },
    { "name": "unknownFutureValue", "value": 2 }
 ]
}
```
