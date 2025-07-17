---
title: "updateRecordingStatusOperation resource type"
description: "Describes the response format of an update recording status action."
author: "ananmishr"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 04/03/2024
---

# updateRecordingStatusOperation resource type

Namespace: microsoft.graph

Describes the response format of an update recording status action.

## Properties

| Property            | Type                        | Description|
|:--------------------|:----------------------------|:-----------------------------------------------------------------------------------|
| clientContext       | String                      | Unique client context string. Max limit is 256 chars.                              |
| id                  | String                      | Read-only.                                                                         |
| resultInfo          | [resultInfo](resultinfo.md) | The result information. Read-only.                                                 |
| status              | String                      | Possible values are: `notStarted`, `running`, `completed`, `failed`.               |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.updateRecordingStatusOperation"
}-->
```json
{
  "clientContext": "String",
  "id": "String (identifier)",
  "resultInfo": {"@odata.type": "#microsoft.graph.resultInfo"},
  "status": "notStarted | running | completed | failed"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "updateRecordingStatusOperation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

