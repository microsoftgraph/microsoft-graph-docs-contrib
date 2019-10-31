---
title: "updateRecordingStatusOperation resource type"
description: "The updateRecordingStatus operation to obtain the result of the updateRecordingStatus action."
author: "VinodRavichandran"
localization_priority: Normal
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# updateRecordingStatusOperation resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This resource type is used to describe the response format for the [updateRecordingStatus](../api/call-updaterecordingstatus.md) API.

## Properties

| Property            | Type                        | Description|
|:--------------------|:----------------------------|:-----------------------------------------------------------------------------------|
| clientContext       | String                      | Unique Client Context string. Max limit is 256 chars.                              |
| id                  | String                      | Read-only.                                                                         |
| resultInfo          | [resultInfo](resultinfo.md) | The result information. Read-only.                                                 |
| status              | String                      | Possible values are: `notStarted`, `running`, `completed`, `failed`.               |

## Relationships
None

## JSON representation

The following is a JSON representation of the resource.

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
