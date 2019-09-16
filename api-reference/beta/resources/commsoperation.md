---
title: "commsOperation resource type"
description: "The status of certain long-running operations."
author: "VinodRavichandran"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# commsOperation resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The status of certain long-running operations.

## Methods
None

## Properties

| Property           | Type                        | Description                                                                     |
| :----------------- | :-------------------------- | :-------------------------------------------------------------------------------|
| clientContext      | String                      | The client context.                                                             |
| id                 | String                      | The operation id. Read-only. Server generated.                                  |
| resultInfo         | [resultInfo](resultinfo.md) | The result information. Read-only. Server generated.                            |
| status             | String                      | Possible values are: `notStarted`, `running`, `completed`, `failed`. Read-only. |

## Relationships
None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.commsOperation"
}-->
```json
{
  "clientContext": "String",
  "id": "String (identifier)",
  "resultInfo": { "@odata.type": "microsoft.graph.resultInfo" },
  "status": "notStarted | running | completed | failed"
}
```


## Example - Passing in state
Usually developers can expect to see a concrete implementation of the `commsOperation` (I.E. [recordOperation](recordOperation.md)) via the notification channel ([commsNotification](commsNotification.md)), which would allow them to disambiguate what type of operation they are being notified about.  However, this may not always be sufficient.  If, for example, developers wish to attach some local state information in each operation, they may do so using the `clientContext` property.

Below is an example passing local state in the `clientContext` of the `commsOperation`.

<!-- {
  "blockType": "example",
  "@odata.type": "microsoft.graph.commsOperation"
}-->
```json
{
  "clientContext": "callId: 91f01516-9c69-43bb-8ea1-de114c977276, cacheInstance: 91f01516-9c69-43bb-8ea1-de114c977276, state: welcome",
  "id": "ABB33D04-3A2C-4D78-996F-9EEEF55EF119",
  "resultInfo": {
    "@odata.type": "#microsoft.graph.resultInfo",
    "code": 200
  },
  "status": "completed"
}
```

## Example - Resolving race conditions

The `clientContext` can also be used to disambiguate race conditions.  If the asynchronous operation completes/fails within a very short time frame, due to network latency it is possible to be notified of the completion BEFORE receiving the response of the action.  In these cases relying on the `commsOperation.Id` is insufficient.

Here is a simple flow diagram to demonstrate:

```
BOT -----> HTTP Request: /calls/{id}/playPrompt  -----> Service
BOT <----- HTTP Request: callback/notification   <----- Service // Play Failed
BOT <----- HTTP Response: /calls/{id}/playPrompt <----- Service // Play Running
BOT -----> HTTP Response: callback/notification  -----> Service
```

If the developer relies on the order of the operations (as is the case in stateful applications), the `clientContext` can be used to disambiguate the race condition.  Specifically, some context can be attached to the request before sending it off such that when the notification is received it can be mapped to the original request without relying on the operation id.

<!-- {
  "blockType": "example",
  "@odata.type": "microsoft.graph.commsOperation"
}-->
```json
{
  "clientContext": "clientOperationId: 91f01516-9c69-43bb-8ea1-de114c977276",
  "id": "ABB33D04-3A2C-4D78-996F-9EEEF55EF119",
  "resultInfo": {
    "@odata.type": "#microsoft.graph.resultInfo",
    "code": 200
  },
  "status": "completed"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "commsOperation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
