---
title: "operationError resource type"
description: "Describes errors in teamsAsyncOperation."
ms.localizationpriority: medium
author: "billbliss"
ms.subservice: teams
doc_type: resourcePageType
ms.date: 07/22/2024
---

# operationError resource type

Namespace: microsoft.graph



Describes errors in [teamsAsyncOperation](teamsasyncoperation.md).

## operationError Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|code|string (readonly)|Operation error code.|
|message|string (readonly)|Operation error message.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.operationError"
}-->

```json
{
    "code": "TeamUnavailable",
    "message": "The team was not found."
}
```

<!-- uuid: 069fadaa-52db-4ced-85d5-74f7caa2c66f
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "operation error resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

