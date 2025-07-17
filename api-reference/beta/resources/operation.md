---
title: "operation resource type"
description: "The status of a long-running operation."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: teams
author: "billbliss"
ms.date: 07/22/2024
---

# operation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The status of a long-running operation.

## Methods

None.

## Properties

| Property           | Type            | Description                                                                     |
| :----------------- | :-------------- | :-------------------------------------------------------------------------------|
| createdDateTime    | DateTimeOffset  | The start time of the operation.                                                |
| id                 | String          | The operation ID. Read-only. Server generated.                                  |
| lastActionDateTime | DateTimeOffset  | The time of the last action of the operation.                                   |
| status             | String          | Possible values are: `notStarted`, `running`, `completed`, `failed`. Read-only. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.operation"
}-->
```json
{
  "createdDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "lastActionDateTime": "String (timestamp)",
  "status": "notStarted | running | completed | failed"
}
```

## Example

<!-- {
  "blockType": "example",
  "@odata.type": "microsoft.graph.operation"
}-->
```json
{
  "createdDateTime": "2018-09-06T15:58:41Z",
  "id": "ABB33D04-3A2C-4D78-996F-9EEEF55EF119",
  "lastActionDateTime": "2018-09-06T15:58:41Z",
  "status": "completed"
}
```

<!-- uuid: 13fa92b1-3b41-498b-aab1-f943464a124f
2018-03-30 10:29:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "operation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


