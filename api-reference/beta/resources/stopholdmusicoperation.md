--- 
title: "stopHoldMusicOperation resource type"
description: "Represents the status of a stopHoldMusic operation, triggered by a call to the stopHoldMusic API."
author: "mkhribech"
localization_priority: Normal
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# stopHoldMusicOperation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the status of a `stopHoldMusic` operation, triggered by a call to the `stopHoldMusic` API.

## Properties

| Property                       | Type                        | Description                                                                                                                                       |
| :----------------------------- | :---------------------------| :-------------------------------------------------------------------------------------------------------------------------------------------------|
| clientContext                  | String                      | Unique client context string. Can have a maximum of 256 characters.                                                                               |
| id                             | String                      | The server operation ID. Read-only.                                                                                            |
| resultInfo                     | [resultInfo](resultinfo.md) | The result information.  Read-only.                                                                                            |
| status                         | String                      | Possible values are: `notStarted`, `running`, `completed`, `failed`. Read-only.                                                 |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.stopHoldMusicOperation"
}-->
```json
{
  "clientContext": "String",
  "id": "String (identifier)",
  "resultInfo": { "@odata.type": "microsoft.graph.resultInfo" },
  "status": "notStarted | running | completed | failed"
}
```