---
title: printTaskStatus resource type
description: Represents the current execution status of a printTask.
author: braedenp-msft
localization_priority: Normal
ms.prod: universal-print
doc_type: resourcePageType
---

# printTaskStatus complex type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the current execution status of a [printTask](printtask.md). **The calling application is responsible for updating this status when processing is finished.** Failure to report completion will result in the related print job being blocked from printing and eventually deleted.

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|state|[printTaskProcessingState](printtaskprocessingstate.md)|The current processing state of the [printTask](printtask.md).|
|description|String|A human-readable description of the current processing state of the [printTask](printtask.md).|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printTaskStatus"
}-->

```json
{
  "state": {"@odata.type": "microsoft.graph.printTaskProcessingState"},
  "description": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printTaskStatus resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
