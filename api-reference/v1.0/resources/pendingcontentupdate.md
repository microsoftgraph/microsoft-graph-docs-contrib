---
title: "pendingContentUpdate"
description: "The pendingContentUpdate resource indicates that an operation that might affect the binary content of the driveItem is pending completion."
ms.localizationpriority: medium
author: "learafa"
ms.subservice: "onedrive"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# pendingContentUpdate resource type

Namespace: microsoft.graph

Indicates that an operation that might affect the binary content of the **driveItem** is pending completion.

## Properties

| Property     | Type         | Description |
|:-------------|:-------------|:------------|
|**queuedDateTime**|DateTimeOffset|Date and time the pending binary operation was queued in UTC time. Read-only.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.pendingContentUpdate",
  "baseType": null
}-->

```json
{
  "queuedDateTime": "String (timestamp)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "The pendingContentUpdate resource indicates that an operation that may affect the binary content of the DriveItem is pending completion.",
  "keywords": "pendingoperation,operation,pendingcontentupdate",
  "section": "documentation",
  "tocPath": ""
}-->

