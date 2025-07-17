---
title: printOperation resource type
description: Represents a long-running Universal Print operation. Base class for operation types such as printerCreateOperation.
author: braedenp-msft
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: resourcePageType
ms.date: 07/22/2024
---

# printOperation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a long-running Universal Print operation. Base class for operation types such as [printerCreateOperation](printercreateoperation.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get](../api/printoperation-get.md) | [printOperation](printoperation.md) | Retrieve a long-running operation within current user or app's tenant. |

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String|The operation's identifier. Read-only.|
|status|[printOperationStatus](printoperationstatus.md)|The status of the operation. Read-only.|
|createdDateTime|DateTimeOffset|The DateTimeOffset when the operation was created. Read-only.|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printOperation",
  "keyProperty": "id",
  "baseType":"microsoft.graph.entity"
}-->

```json
{
    "id": "String (identifier)",
    "status": {"@odata.type": "microsoft.graph.printOperationStatus"},
    "createdDateTime": "2020-06-15T19:54:14.853Z"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printOperation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


