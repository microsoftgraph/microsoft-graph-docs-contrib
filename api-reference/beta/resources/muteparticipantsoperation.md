--- 
title: "MuteParticipantsOperation resource type"
description: "The muteParticipants operation to obtain the result of the muteAll action."
author: "VinodRavichandran"
localization_priority: Normal
ms.prod: "cloud-communications"
doc_type: resourcePageType
---


# MuteParticipantsOperation resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the response format of a call participant muteAll operation.

## Properties

| Property                       | Type                        | Description                                                                                                                                       |
| :----------------------------- | :---------------------------| :-------------------------------------------------------------------------------------------------------------------------------------------------|
| clientContext                  | String                      | Unique client context string. Can have a maximum of 256 characters.                                                                               |
| id                             | String                      | The server operation id. Read-only. Server generated.                                                                                             |
| participants                   | String collection           | The participants to be muted.                                                                                                                     |
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
  "@odata.type": "microsoft.graph.muteParticipantsOperation"
}-->
```json
{
  "clientContext": "String",
  "id": "String (identifier)",
  "participants": ["String"],
  "resultInfo": {"@odata.type": "#microsoft.graph.resultInfo"},
  "status": "notStarted | running | completed | failed"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "muteParticipantsOperation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
