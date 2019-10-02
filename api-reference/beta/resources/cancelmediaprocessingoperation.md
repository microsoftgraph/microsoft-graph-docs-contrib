--- 
title: "CancelMediaProcessingOperation resource type"
description: "A resource type used to cancel media processing and to capture the status of the operation."
author: "VinodRavichandran"
---

# CancelMediaProcessingOperation resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

## Properties

| Property                       | Type                        | Description                                                                                                                                       |
| :----------------------------- | :---------------------------| :-------------------------------------------------------------------------------------------------------------------------------------------------|
| all                            | Boolean                     | The flag indicating whether to stop all operations or current.                                                                                    |
| clientContext                  | String                      | The client context.                                                                                                                               |
| id                             | String                      | The server operation id. Read-only. Server generated.                                                                                             |
| resultInfo                     | [resultInfo](resultinfo.md) | The result information.  Read-only. Server generated.                                                                                             |
| status                         | String                      | Possible values are: `notStarted`, `running`, `completed`, `failed`. Read-only. Server generated.                                                 |

## Relationships
None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.cancelMediaProcessingOperation"
}-->
```json
{
  "all": true,
  "clientContext": "String",
  "id": "String (identifier)",
  "resultInfo": {"@odata.type": "#microsoft.graph.resultInfo"},
  "status": "notStarted | running | completed | failed"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "cancelMediaProcessingOperation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
