---
title: "commsOperation resource type"
description: "The status of certain long-running operations."
author: "ananmishr"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

# commsOperation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the status of certain long-running operations.

This resource can be returned as the response to an action, or as the content of a [commsNotification](commsNotification.md).  

When it's returned as a response to an action, the status indicates whether there will be subsequent notifications. If for example, an operation with status of `completed` or `failed` is returned,  there won't be any subsequent operation via the notification channel.

If an operation with a status of `notStarted`, `running` or `null` is returned, subsequent updates come via the notification channel.

## Properties

| Property           | Type                        | Description                                                                     |
| :----------------- | :-------------------------- | :-------------------------------------------------------------------------------|
| clientContext      | String                      | Unique Client Context string. Max limit is 256 chars.                           |
| ID                 | String                      | The operation ID. Read-only.                                                    |
| resultInfo         | [resultInfo](resultinfo.md) | The result information. Read-only.                                              |
| status             | String                      | Possible values are: `notStarted`, `running`, `completed`, `failed`. Read-only. |

## Relationships
None

## JSON representation

Here's a JSON representation of the resource.

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


