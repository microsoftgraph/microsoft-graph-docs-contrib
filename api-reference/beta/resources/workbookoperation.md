---
title: "workbookOperation resource type"
description: "Represents the status of a long-running workbook operation."
ms.localizationpriority: medium
author: "grangeryy"
ms.subservice: "excel"
doc_type: "resourcePageType"
toc.title: Operation
ms.date: 07/17/2024
---

# workbookOperation resource type

Represents the status of a long-running workbook operation.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get](../api/workbookoperation-get.md) | [workbookOperation](workbookoperation.md) | Get a workbookOperation object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|error|[workbookOperationError](workbookoperationerror.md)| The error returned by the operation.|
|id|String| The identifier for the operation. Read-only.|
|resourceLocation|String| The resource URI for the result.|
|status|String| The current status of the operation. Possible values are: `NotStarted`, `Running`, `Completed`, `Failed`.|
|statusCode| integer| Status code of the operation. | 

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "id", "status", "error", "resourceLocation"
  ],
  "@odata.type": "microsoft.graph.workbookOperation",
  "keyProperty": "id"
}-->

```json
{
  "@odata.type": "#microsoft.graph.workbookOperation",
  "id": "String (identifier)",
  "status": "String",
  "resourceLocation": "String",
  "statusCode": "Integer",
  "error": {
    "@odata.type": "microsoft.graph.workbookOperationError"
  }
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "workbookOperation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


