---
title: "commsNotification resource type"
description: "Communications notification base type that is published by Communications servers to notify changes."
author: "VinodRavichandran"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# commsNotification resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Communications notification base type that is published by Communications servers to notify changes.

## Properties
| Property	     | Type    | Description                                                |
|:---------------|:--------|:-----------------------------------------------------------|
| changeType     | String  | Possible values are: `created`, `updated`, `deleted`.      |
| resourceUrl       | String  | URI of the resource that was changed.                      |

> **Note:** `resourceData` is available as additional data. It is an entity or Collection(entity) depending on the number of changes packaged in the notification.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "resourceData"
  ],
  "@odata.type": "microsoft.graph.commsNotification",
  "openType": true
}-->
```json
{
  "@odata.type": "#microsoft.graph.commsNotification",
  "changeType": "created | updated | deleted",
  "resourceUrl": "String"
}

```
## Example incoming call notification
<!-- {
  "blockType": "example",
  "@odata.type": "microsoft.graph.commsNotification",
  "truncated": true
}-->
```json
{
  "@odata.type": "#microsoft.graph.commsNotification",
  "changeType": "created",
  "resourceUrl": "/communications/calls/1c080e47-2ff0-40a6-8ce7-7980caadec6e",
  "resourceData": {
    "@odata.type": "#microsoft.graph.call",
    "id": "1c080e47-2ff0-40a6-8ce7-7980caadec6e",
    "state": "incoming"
  }
}
```

## Example rouster notification
<!-- {
  "blockType": "example",
  "@odata.type": "microsoft.graph.commsNotification",
  "truncated": true
}-->
```json
{
  "@odata.type": "#microsoft.graph.commsNotification",
  "changeType": "created",
  "resourceUrl": "/communications/calls/72c6240c-c032-4449-90b0-564541b9f426/participants",
  "resourceData": [
    {
      "@odata.type": "#microsoft.graph.participant",
      "id": "fb1f9092-8c52-4ea4-bd47-bd1daeec80c1"
    },
    {
      "@odata.type": "#microsoft.graph.participant",
      "id": "7ea06241-f4a4-4063-b6a7-ae1336a7bbfc"
    }
  ]
}
```

## Example call establishing notification
<!-- {
  "blockType": "example",
  "@odata.type": "microsoft.graph.commsNotification",
  "truncated": true
}-->
```json
{
  "@odata.type": "#microsoft.graph.commsNotification",
  "changeType": "updated",
  "resourceUrl": "/communications/calls/672df101-4ba6-475a-a6c5-2575de6cf617",
  "callbackUri": "https://bot.contoso.com/callback",
  "resourceData": {
    "@odata.type": "#microsoft.graph.call",
    "state": "establishing",
    "id": "672df101-4ba6-475a-a6c5-2575de6cf617"
  }
}
```

## Example call terminated notification
<!-- {
  "blockType": "example",
  "@odata.type": "microsoft.graph.commsNotification",
  "truncated": true
}-->
```json
{
  "@odata.type": "#microsoft.graph.commsNotification",
  "changeType": "deleted",
  "resourceUrl": "/communications/calls/0552bf87-c675-4369-8061-32beeaf4efae",
  "resourceData": {
    "@odata.type": "#microsoft.graph.call",
    "state": "terminated",
    "resultInfo": {
      "@odata.type": "#microsoft.graph.resultInfo",
      "code": 0
    }
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "commsNotification resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
