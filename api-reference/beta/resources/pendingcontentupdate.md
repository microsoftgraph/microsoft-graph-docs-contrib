---
author: JeremyKelley
description: "The pendingContentUpdate resource indicates that an operation that may affect the binary content of the driveItem is pending completion."
ms.date: 08/06/2019
title: PendingContentUpdate
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
---
# PendingContentUpdate resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **pendingContentUpdate** resource indicates that an operation that may affect the binary content of the DriveItem is pending completion.

## JSON representation

<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.pendingContentUpdate" } -->
```json
{
  "queuedDateTime": "String (timestamp)"
}
```

## Properties

| Property Name  | Type           | Description                                                       |
|:---------------|:---------------|:------------------------------------------------------------------|
| queuedDateTime | DateTimeOffset | Date and time the pending binary operation was queued. Read-only. |

## Remarks 

For more information about the facets on a DriveItem, see [DriveItem](driveitem.md).

<!-- {
  "type": "#page.annotation",
  "description": "The pendingContentUpdate resource indicates that an operation that may affect the binary content of the DriveItem is pending completion.",
  "keywords": "pendingoperation, operation, pendingcontentupdate",
  "section": "documentation",
  "tocPath": "Facets/PendingContentUpdate"
} -->
