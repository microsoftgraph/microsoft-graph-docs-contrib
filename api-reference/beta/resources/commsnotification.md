---
title: "commsNotification resource type"
description: "Communications notification base type that is published by Communications servers to notify changes."
author: "ananmishr"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# commsNotification resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Communications notification base type that is published by Communications servers to notify changes.

## Properties
| Property	     | Type    | Description                                                |
|:---------------|:--------|:-----------------------------------------------------------|
| changeType     | String  | The possible values are: `created`, `updated`, `deleted`.      |
| resourceUrl       | String  | URI of the resource that was changed.                      |

> **Note:** `resourceData` is available as additional data. It is either an entity or a collection of entities depending on the number of changes packaged in the notification.

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

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


