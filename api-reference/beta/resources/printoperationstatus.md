---
title: "printOperationStatus resource type"
description: Represents the current status of a long-running Universal Print operation.
author: braedenp-msft
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: resourcePageType
ms.date: 10/04/2024
---

# printOperationStatus resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the current status of a long-running Universal Print operation.

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|state|printOperationProcessingState|The printOperation's current processing state. Valid values are described in the following table. Read-only.|
|description|String|A human-readable description of the printOperation's current processing state. Read-only.|

### printOperationProcessingState values

|Member|Description|
|:---|:---|
|notStarted|The operation has not yet started.|
|running|The operation is running.|
|succeeded|The operation completed successfully.|
|failed|The operation failed.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printOperationStatus"
}-->

```json
{
    "state": "String",
    "description": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printOperationStatus resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

