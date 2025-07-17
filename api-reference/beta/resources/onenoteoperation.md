---
title: "onenoteOperation resource type"
description: "The status of certain long-running OneNote operations."
author: "jewan-microsoft"
ms.localizationpriority: medium
ms.subservice: "onenote"
doc_type: resourcePageType
ms.date: 03/21/2024
---

# onenoteOperation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The status of certain long-running OneNote operations.
## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get operation](../api/onenoteoperation-get.md) | [onenoteOperation](onenoteoperation.md) |Get the status of the operation. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|createdDateTime| DateTimeOffset |The start time of the operation.|
|error|[onenoteOperationError](onenoteoperationerror.md)|The error returned by the operation.|
|id|string|The operation id. Read-only.|
|lastActionDateTime| DateTimeOffset |The time of the last action of the operation.|
|resourceId|string|The resource id.|
|resourceLocation|string|The resource URI for the object. For example, the resource URI for a copied page or section. |
|status|operationStatus|The current status of the operation: `NotStarted`, `Running`, `Completed`, `Failed`. |
|percentComplete|string|The operation percent complete if the operation is still in `running` status.|

## Relationships
None

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.onenoteOperation"
}-->

```json
{
  "createdDateTime": "String (timestamp)",
  "error": {"@odata.type": "microsoft.graph.onenoteOperationError"},
  "id": "string (identifier)",
  "lastActionDateTime": "String (timestamp)",
  "resourceId": "string",
  "resourceLocation": "string",
  "status": "string",
  "percentComplete": "string"
}

```
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "onenoteOperation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


