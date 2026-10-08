--- 
title: "stopHoldMusicOperation resource type"
description: "Represents the status of a stopHoldMusic operation, triggered by a call to the stopHoldMusic API."
author: "rahulva-msft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# stopHoldMusicOperation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the status of a [stopHoldMusic](../api/participant-stopholdmusic.md) operation, triggered by a call to the **stopHoldMusic** API. Inherits from [commsOperation](commsoperation.md).

## Properties

| Property                       | Type                        | Description                                                                                                                                       |
| :----------------------------- | :---------------------------| :-------------------------------------------------------------------------------------------------------------------------------------------------|
| clientContext                  | String                      | Inherited from **commsOperation**. Unique client context string. Can have a maximum of 256 characters.                                                                               |
| id                             | String                      | Inherited from **commsOperation**. The server operation ID. Read-only.                                                                                            |
| resultInfo                     | [resultInfo](resultinfo.md) | Inherited from **commsOperation**. The result information.  Read-only.                                                                                            |
| status                         | String                      | Inherited from **commsOperation**. The possible values are: `notStarted`, `running`, `completed`, `failed`. Read-only.                                                 |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

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
