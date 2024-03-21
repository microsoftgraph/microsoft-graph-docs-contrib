---
title: "workbookSessionInfo resource type"
description: "Provides information about workbook session."
author: "lumine2008"
ms.localizationpriority: medium
ms.subservice: "excel"
doc_type: resourcePageType
---

# workbookSessionInfo resource type

Namespace: microsoft.graph

Provides information about workbook session.


## JSON representation

Here's a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [  ],
  "@odata.type": "microsoft.graph.workbookSessionInfo"
}-->

```json
{
  "id": "string",
  "persistChanges": true
}
```

## Properties

| Property | Type  | Description                               |
|:---------|:------|:------------------------------------------|
| id  | string | ID of the workbook session. |
| persistChanges | boolean |  `true` for persistent session. `false` for non-persistent session (view mode) |


